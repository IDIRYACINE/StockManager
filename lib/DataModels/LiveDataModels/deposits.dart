

import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

class DepositsLiveDataModel with ChangeNotifier{

  final List<Record> _loadedRecords  = [];
  
  int get recordsCount => _loadedRecords.length;

  get selectedRecord => null;

  Record record(int index) => _loadedRecords[index];


  Record get selectedFamily => _loadedRecords[selectedIndex];

  late UpdateRowCallback updateModifiedElementCallback;

  int selectedIndex = 0 ;   

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


  void update(Record element) {
    // _loadedProducts[selectedIndex] = element;
    updateModifiedElementCallback;
  }
}