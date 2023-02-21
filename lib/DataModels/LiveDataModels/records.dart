import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';

class RecordsLiveDataModel {
  RecordsLiveDataModel() {
    _depositDelegate = _DepositDelegate(_toggleDelegate);
  }

  late _DepositDelegate _depositDelegate;

  final List<Record> _loadedRecords = [];

  List<Record> get depositRecords => _depositDelegate.depositRecords;

  int get recordsCount => _loadedRecords.length;
  Record record(int index) => _loadedRecords[index];


  int get depositsCounts => _depositDelegate.depositsCounts;
  Record get selectedDepositRecord =>
      _depositDelegate.depositRecords[selectedElementIndex];
  Record depositRecord(int index) => _depositDelegate.depositRecords[index];
  Record get activeDepositRecord => _depositDelegate.activeDepositRecord;

  VoidCallback? updateSelectedRow;
  int selectedElementIndex = -1;

  final ValueNotifier<bool> _recordsRefresh = ValueNotifier(false);

  ValueListenable<bool> get recordsRefresh => _recordsRefresh;
  ValueListenable<bool> get depositRefresh => _depositDelegate.depositRefresh;

  List<Record> get records => _loadedRecords;

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void _toggleDelegate(ValueNotifier<bool> refresh) {
    toggleRefresh(refresh);

    toggleRefresh(_recordsRefresh);
  }

  void addRecord(Record record) {
    _loadedRecords.add(record);
    toggleRefresh(_recordsRefresh);
  }

  void setAllRecords(Iterable<Record> elements) {
    _loadedRecords.clear();
    _loadedRecords.addAll(elements);
    toggleRefresh(_recordsRefresh);
  }

  void addDepositRecord(Record element) {
    _loadedRecords.add(element);
    _depositDelegate.addDepositRecord(element);
  }

  void addActiveDepositRecord() {
    _loadedRecords.add(activeDepositRecord);
    _depositDelegate.addDepositRecord(activeDepositRecord);
  }

  void removeDepositRecord(Record record) {
    _loadedRecords.remove(record);
    _depositDelegate.removeDepositRecord(record);
  }

  void updateDepositRecord(Record element) {
    _depositDelegate.updateDepositRecord(element);
  }

  void setAllDeposits(List<Record> records) {
    _depositDelegate.setAllDeposits(records);
  }

  void clearDeposits() {
    _depositDelegate.clearDeposits();
  }

  void removeDepositProduct(Record record, RecordProduct product) {
    _depositDelegate.removeDepositProduct(record, product);
  }

  void setActiveDepositRecord(Record record) {
    _depositDelegate.setActiveRecord(record);
  }
}

class _DepositDelegate {
  _DepositDelegate(this.notifyChange);

  final Callback<ValueNotifier<bool>> notifyChange;
  final List<Record> _depositRecords = [];

  List<Record> get depositRecords => _depositRecords;
  Record get activeDepositRecord => _activeDepositRecord;
  Record _activeDepositRecord = Record.defaultInstance(
      paymentType: PaymentTypes.deposit, timeStamp: Record.depositTimeStamp);

  int get depositsCounts => _depositRecords.length;

  Record depositRecord(int index) => _depositRecords[index];

  int selectedElementIndex = -1;

  final ValueNotifier<double> _totalDeposit = ValueNotifier(0);

  final ValueNotifier<bool> _depositRefresh = ValueNotifier(false);

  ValueListenable<bool> get depositRefresh => _depositRefresh;
  ValueListenable<double> get totalDeposit => _totalDeposit;

  void setAllRecords(Iterable<Record> elements) {
    _depositRecords.clear();
    _depositRecords.addAll(elements);
    notifyChange(_depositRefresh);
  }

  void setActiveRecord(Record record) {
    _activeDepositRecord = record;
  }

  void addActiveDepositRecord() {
    _totalDeposit.value += _activeDepositRecord.totalPrice;
    _depositRecords.add(_activeDepositRecord);
    notifyChange(_depositRefresh);
  }

  void addDepositRecord(Record record) {
    _totalDeposit.value += record.totalDeposit;
    _depositRecords.add(record);
    notifyChange(_depositRefresh);
  }

  void removeDepositRecord(Record record) {
    _totalDeposit.value -= record.totalDeposit;
    _depositRecords.remove(record);
    notifyChange(_depositRefresh);
  }

  void updateDepositRecord(Record record) {
    Record old = _depositRecords[selectedElementIndex];
    _totalDeposit.value -= old.totalDeposit + record.totalDeposit;

    _depositRecords[selectedElementIndex] = record;
    notifyChange(_depositRefresh);
  }

  void setAllDeposits(List<Record> records) {
    _totalDeposit.value = 0;
    _depositRecords.clear();
    _depositRecords.addAll(records);
    notifyChange(_depositRefresh);
  }

  void clearDeposits() {
    Record.generateDepositId();
    _activeDepositRecord = Record.defaultInstance(
        paymentType: PaymentTypes.deposit, timeStamp: Record.depositTimeStamp);
    _totalDeposit.value = 0;
    _depositRecords.clear();
    notifyChange(_depositRefresh);
  }

  void removeDepositProduct(Record record, RecordProduct product) {
    _activeDepositRecord.products.remove(product.timeStamp);
    _totalDeposit.value -= product.sellingPrice;

    notifyChange(_depositRefresh);
  }
}
