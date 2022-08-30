


import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class SellersLiveDataModel with ChangeNotifier{

  final List<Seller> _loadedSellers  = [];
  
  int get sellersCount => _loadedSellers.length;

  Seller seller(int index) => _loadedSellers[index];

  final ValueNotifier<int> selectedSellerIndex = ValueNotifier(-1);
  
  void add(Seller element) {
    _loadedSellers.add(element);
    notifyListeners();
  }
  
  void clear() {
    _loadedSellers.clear();
    notifyListeners();
  }
  
  void remove(Seller element) {
    _loadedSellers.remove(element);
    notifyListeners();
  }
  
  void setAll(Iterable<Seller> elements) {
    _loadedSellers.setAll(0,elements);
    notifyListeners();
  }

}