import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class RecordsLiveDataModel with ChangeNotifier {
  final List<Record> _loadedRecords = [];

  final List<Record> _purchaseRecords = [];

  final List<Record> _depositRecords = [];

  int get recordsCount => _loadedRecords.length;
  Record record(int index) => _loadedRecords[index];

  int get purchasesCount => _purchaseRecords.length;
  Record get selectedPurchaseRecord => _purchaseRecords[selectedElementIndex];
  Record purchaseRecord(int index) => _purchaseRecords[index];

  int get depositsCounts => _depositRecords.length;
  Record get selectedDepositRecord => _depositRecords[selectedElementIndex];
  Record depositRecord(int index) => _depositRecords[index];

  VoidCallback? updateSelectedRow;
  int selectedElementIndex = -1;

  final ValueNotifier<double> _totalPrice = ValueNotifier(0);

  final ValueNotifier<bool> _recordsRefresh = ValueNotifier(false);
  final ValueNotifier<bool> _depositRefresh = ValueNotifier(false);
  final ValueNotifier<bool> _salesRefresh = ValueNotifier(false);

  ValueListenable<bool> get recordsRefresh => _recordsRefresh;
  ValueListenable<bool> get depositRefresh => _depositRefresh;
  ValueListenable<bool> get salesRefresh => _salesRefresh;
  ValueListenable<double> get totalPrice => _totalPrice;

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
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

  void _removeRecord(Record element) {
    updateSelectedRow = null;
    selectedElementIndex = -1;
    _loadedRecords.add(element);
    toggleRefresh(_recordsRefresh);
  }

  void _updateRecord() {
    toggleRefresh(_recordsRefresh);
  }

  void addSaleRecord(Record element) {
    _totalPrice.value += element.sellingPrice;
    _purchaseRecords.add(element);
    _loadedRecords.add(element);
    toggleRefresh(_salesRefresh);
  }

  void clearSaleRecord() {
    _purchaseRecords.clear();
    _totalPrice.value = 0;
    toggleRefresh(_salesRefresh);
  }

  void removeSaleRecord() {
    Record element = selectedPurchaseRecord;
    _totalPrice.value -= element.sellingPrice;
    _purchaseRecords.remove(element);
    toggleRefresh(_salesRefresh);
    _removeRecord(element);
  }

  void updateSaleRecord(Record element) {
    Record lastElement = _loadedRecords[selectedElementIndex];
    _totalPrice.value = _totalPrice.value - lastElement.sellingPrice + element.sellingPrice;

    _loadedRecords[selectedElementIndex] = element;
    updateSelectedRow?.call();
    _updateRecord();

  }

  void addDepositRecord(Record element) {
    _loadedRecords.add(element);
    _depositRecords.add(element);
    toggleRefresh(_depositRefresh);
  }

  void removeDepositRecord() {
    Record element = selectedDepositRecord;
    _depositRecords.remove(element);
    toggleRefresh(_depositRefresh);

    _removeRecord(element);
  }

  void updateDepositRecord(Record element) {
    _depositRecords[selectedElementIndex] = element;

    updateSelectedRow?.call();
  }
}
