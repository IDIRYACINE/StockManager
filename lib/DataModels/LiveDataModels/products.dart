

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';

class ProductsLiveDataModel with ChangeNotifier{

  final List<Product> _loadedProducts  = [];
  
  int get productsCount => _loadedProducts.length;

  Product product(int index) => _loadedProducts[index];

  final ValueNotifier<int> selectedProductIndex = ValueNotifier(-1);
  
  void add(Product element) {
    _loadedProducts.add(element);
    notifyListeners();
  }
  
  void clear() {
    _loadedProducts.clear();
    notifyListeners();
  }
  
  void remove(Product element) {
    _loadedProducts.remove(element);
    notifyListeners();
  }
  
  void setAll(Iterable<Product> elements) {
    _loadedProducts.setAll(0,elements);
    notifyListeners();
  }

}
