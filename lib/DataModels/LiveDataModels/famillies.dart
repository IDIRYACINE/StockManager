
import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class FamilliesLiveDataModel with ChangeNotifier{

  final List<ProductFamily> _loadedProductFamilys  = [];
  
  int get productFamilysCount => _loadedProductFamilys.length;

  ProductFamily productFamily(int index) => _loadedProductFamilys[index];

  final ValueNotifier<int> selectedProductFamilyIndex = ValueNotifier(-1);
  
  void add(ProductFamily element) {
    _loadedProductFamilys.add(element);
    notifyListeners();
  }
  
  void clear() {
    _loadedProductFamilys.clear();
    notifyListeners();
  }
  
  void remove(ProductFamily element) {
    _loadedProductFamilys.remove(element);
    notifyListeners();
  }
  
  void setAll(Iterable<ProductFamily> elements) {
    _loadedProductFamilys.setAll(0,elements);
    notifyListeners();
  }
}