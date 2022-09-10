import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

class RecordsLiveDataModel {
  RecordsLiveDataModel() {
    _depositDelegate = _DepositDelegate(_toggleDelegate);
    _purchaseDelegate = _PurchaseDelegate(_toggleDelegate);
  }

  late _DepositDelegate _depositDelegate;
  late _PurchaseDelegate _purchaseDelegate;

  final List<Record> _loadedRecords = [];

  List<Record> get depositRecords => _depositDelegate.depositRecords;

  int get recordsCount => _loadedRecords.length;
  Record record(int index) => _loadedRecords[index];

  int get purchasesCount => _purchaseDelegate.purchasesCount;
  Record get selectedPurchaseRecord =>
      _purchaseDelegate.purchaseRecords[selectedElementIndex];
  Record purchaseRecord(int index) => _purchaseDelegate.purchaseRecords[index];

  int get depositsCounts => _depositDelegate.depositsCounts;
  Record get selectedDepositRecord =>
      _depositDelegate.depositRecords[selectedElementIndex];
  Record depositRecord(int index) => _depositDelegate.depositRecords[index];

  VoidCallback? updateSelectedRow;
  int selectedElementIndex = -1;

  final ValueNotifier<bool> _recordsRefresh = ValueNotifier(false);

  ValueListenable<bool> get recordsRefresh => _recordsRefresh;
  ValueListenable<bool> get depositRefresh => _depositDelegate.depositRefresh;
  ValueListenable<bool> get salesRefresh => _purchaseDelegate.salesRefresh;
  ValueListenable<double> get totalPrice => _purchaseDelegate.totalPrice;

  List<Record> get purchaseRecords => _purchaseDelegate.purchaseRecords;
  List<Record> get records => _loadedRecords;

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void _toggleDelegate(ValueNotifier<bool> refresh) {
    toggleRefresh(refresh);

    toggleRefresh(_recordsRefresh);
  }

  void addRecord(Record element) {
    _loadedRecords.add(element);
    toggleRefresh(_recordsRefresh);
  }

  void setAllRecords(Iterable<Record> elements) {
    _loadedRecords.clear();
    _loadedRecords.addAll(elements);
    toggleRefresh(_recordsRefresh);
  }

  void addSaleRecord(Record element) {
    _loadedRecords.add(element);
    _purchaseDelegate.addSaleRecord(element);
  }

  void clearSaleRecord() {
    _purchaseDelegate.clearSaleRecord();
  }

  void removeSaleRecord(Record record) {
    _loadedRecords.remove(record);
    _purchaseDelegate.removeSaleRecord(record);
  }

  void addDepositRecord(Record element) {
    _loadedRecords.add(element);
    _depositDelegate.addDepositRecord(element);
  }

  void removeDepositRecord(Record record) {
    _loadedRecords.remove(record);
    _depositDelegate.removeDepositRecord(record);
  }

  void updateDepositRecord(Record element) {
    _depositDelegate.updateDepositRecord(element);
  }

  Record saleRecord(int index) {
    return _purchaseDelegate.purchaseRecords[index];
  }

  void updateSaleRecordAt(Record record, int index) {}

  void setAllDeposits(List<Record> records) {
    _depositDelegate.setAllDeposits(records);
  }

  void clearDeposits() {
    _depositDelegate.clearDeposits();
  }
}

class _PurchaseDelegate {
  _PurchaseDelegate(this.notifyChange);

  final Callback<ValueNotifier<bool>> notifyChange;

  final List<Record> _purchaseRecords = [];

  int get purchasesCount => _purchaseRecords.length;
  Record get selectedPurchaseRecord => _purchaseRecords[selectedElementIndex];
  Record purchaseRecord(int index) => _purchaseRecords[index];

  int selectedElementIndex = -1;

  final ValueNotifier<double> _totalPrice = ValueNotifier(0);
  final ValueNotifier<bool> _salesRefresh = ValueNotifier(false);

  ValueListenable<bool> get salesRefresh => _salesRefresh;
  ValueListenable<double> get totalPrice => _totalPrice;

  List<Record> get purchaseRecords => _purchaseRecords;

  void addSaleRecord(Record element) {
    _totalPrice.value += element.sellingPrice;
    _purchaseRecords.add(element);
    notifyChange(_salesRefresh);
  }

  void clearSaleRecord() {
    Record.generateSaleId();
    _purchaseRecords.clear();
    _totalPrice.value = 0;
    notifyChange(_salesRefresh);
  }

  void removeSaleRecord(Record record) {
    _totalPrice.value -= record.sellingPrice;
    _purchaseRecords.remove(record);
    notifyChange(_salesRefresh);
  }

  Record saleRecord(int index) {
    return _purchaseRecords[index];
  }
}

class _DepositDelegate {
  _DepositDelegate(this.notifyChange);

  final Callback<ValueNotifier<bool>> notifyChange;
  final List<Record> _depositRecords = [];

  List<Record> get depositRecords => _depositRecords;

  int get depositsCounts => _depositRecords.length;

  Record depositRecord(int index) => _depositRecords[index];

  int selectedElementIndex = -1;

  final ValueNotifier<double> _totalDeposit = ValueNotifier(0);

  final ValueNotifier<bool> _depositRefresh = ValueNotifier(false);

  ValueListenable<bool> get depositRefresh => _depositRefresh;
  ValueListenable<double> get totalDeposit => _totalDeposit;

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void setAllRecords(Iterable<Record> elements) {
    _depositRecords.clear();
    _depositRecords.addAll(elements);
    notifyChange(_depositRefresh);
  }

  void addDepositRecord(Record element) {
    _totalDeposit.value += element.deposit;
    _depositRecords.add(element);
    toggleRefresh(_depositRefresh);
  }

  void removeDepositRecord(Record record) {
    _totalDeposit.value -= record.deposit;
    _depositRecords.remove(record);
    toggleRefresh(_depositRefresh);
  }

  void updateDepositRecord(Record element) {
    Record old = _depositRecords[selectedElementIndex];
    _totalDeposit.value -= old.deposit + element.deposit;

    _depositRecords[selectedElementIndex] = element;
    toggleRefresh(_depositRefresh);
  }

  void setAllDeposits(List<Record> records) {
    _totalDeposit.value = 0;
    _depositRecords.clear();
    _depositRecords.addAll(records);
    notifyChange(_depositRefresh);
  }
  
  void clearDeposits() {
    Record.generateDepositId();
    _totalDeposit.value = 0;
    _depositRecords.clear();
    notifyChange(_depositRefresh);
  }
}
