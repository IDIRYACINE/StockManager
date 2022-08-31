
import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class FamilliesLiveDataModel with ChangeNotifier{

  final List<ProductFamily> loadedProductFamilys  = [];
  
  int get productFamilysCount => loadedProductFamilys.length;

  ProductFamily productFamily(int index) => loadedProductFamilys[index];

  ProductFamily get selectedFamily => loadedProductFamilys[selectedIndex];

  VoidCallback? updateModifiedElementCallback;

  int selectedIndex = 0 ; 

  void add(ProductFamily element) {
    loadedProductFamilys.add(element);
    notifyListeners();
  }
  
  void clear() {
    loadedProductFamilys.clear();
    notifyListeners();
  }
  
  void remove(ProductFamily element) {
    loadedProductFamilys.remove(element);
    notifyListeners();
  }
  
  void setAll(Iterable<ProductFamily> elements) {
    loadedProductFamilys.setAll(0,elements);
    notifyListeners();
  }


  void update(ProductFamily element) {
    loadedProductFamilys[selectedIndex] = element;
    updateModifiedElementCallback?.call();
  }
}