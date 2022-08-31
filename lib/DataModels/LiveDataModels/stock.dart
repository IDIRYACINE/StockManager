

import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class StockLiveDataModel with ChangeNotifier{


  final List<ProductFamily> loadedProductFamillies  = [];

  final ValueNotifier<bool> _refreshProductsFamily = ValueNotifier(false);

  ValueNotifier<bool> get refreshProductsFamily => _refreshProductsFamily;

  int get productFamilysCount => loadedProductFamillies.length;

  ProductFamily productFamily(int index) => loadedProductFamillies[index];

  ProductFamily get selectedFamily => loadedProductFamillies[selectedElementIndex];


  final List<Product> _loadedProducts  = [];

  final ValueNotifier<bool> _refreshProducts = ValueNotifier(false);

  ValueListenable<bool> get refreshProducts => _refreshProducts;

  int get productsCount => _loadedProducts.length;

  Product product(int index) => _loadedProducts[index];

  Product get selectedProduct => _loadedProducts[selectedElementIndex];

  VoidCallback? updateSelectedRow;

  int selectedElementIndex = 0 ; 

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }
  
  void addProduct(Product element) {
    _loadedProducts.add(element);
    toggleRefresh(_refreshProducts);
  }
  
  void clearProducts() {
    _loadedProducts.clear();
    toggleRefresh(_refreshProducts);
  }
  
  void deleteProduct(Product element) {
    _loadedProducts.remove(element);
    toggleRefresh(_refreshProducts);
  }
  
  void setAllProducts(Iterable<Product> elements) {
    _loadedProducts.setAll(0,elements);
    toggleRefresh(_refreshProducts);
  }

  void updateProduct(Product element) {
    _loadedProducts[selectedElementIndex] = element;
    updateSelectedRow?.call();
  }


  void addProductFamily(ProductFamily element) {
    loadedProductFamillies.add(element);
    toggleRefresh(_refreshProductsFamily);
  }
  
  void clearProductFamillies() {
    loadedProductFamillies.clear();
    toggleRefresh(_refreshProductsFamily);
  }
  
  void deleteProductFamily(ProductFamily element) {
    loadedProductFamillies.remove(element);
    toggleRefresh(_refreshProductsFamily);
  }
  
  void setAllFamillies(Iterable<ProductFamily> elements) {
    loadedProductFamillies.setAll(0,elements);
    toggleRefresh(_refreshProductsFamily);
  }


  void updateProductFamily(ProductFamily element) {
    loadedProductFamillies[selectedElementIndex] = element;
    updateSelectedRow?.call();
  }

}
