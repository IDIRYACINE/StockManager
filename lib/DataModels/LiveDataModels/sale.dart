
import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';


class SalesLiveDataModel with ChangeNotifier{

  final List<Record> _loadedRecords  = [];
  
  int get recordsCount => _loadedRecords.length;

  Record record(int index) => _loadedRecords[index];

  final ValueNotifier<int> selectedRecordIndex = ValueNotifier(-1);
  
  void add(Record element) {
    _loadedRecords.add(element);
    notifyListeners();
  }
  
  void clear() {
    _loadedRecords.clear();
    notifyListeners();
  }
  
  void remove(Record element) {
    _loadedRecords.remove(element);
    notifyListeners();
  }
  
  void setAll(Iterable<Record> elements) {
    _loadedRecords.setAll(0,elements);
    notifyListeners();
  }

}