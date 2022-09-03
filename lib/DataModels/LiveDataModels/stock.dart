

import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class StockLiveDataModel with ChangeNotifier{


  final List<ProductFamily> loadedProductFamillies  = [];

  final ValueNotifier<bool> _refreshProductsFamily = ValueNotifier(false);

  ValueNotifier<bool> get refreshProductsFamily => _refreshProductsFamily;

  int get productFamilysCount => loadedProductFamillies.length;

  ProductFamily productFamily(int index) => loadedProductFamillies[index];

  final List<Product> _loadedProducts  = [];

  final ValueNotifier<bool> _refreshProducts = ValueNotifier(false);

  ValueListenable<bool> get refreshProducts => _refreshProducts;

  int get productsCount => _loadedProducts.length;

  Product product(int index) => _loadedProducts[index];


  VoidCallback? updateSelectedRow;

  int selectedElementIndex = -1 ; 

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void _cleanLastSelectedRow(){
     updateSelectedRow = null;
    selectedElementIndex = -1;
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
    _cleanLastSelectedRow();
    _loadedProducts.remove(element);
    toggleRefresh(_refreshProducts);
  }
  
  void setAllProducts(Iterable<Product> elements) {
    _loadedProducts.clear();
    _loadedProducts.addAll(elements);
    toggleRefresh(_refreshProducts);
  }

  void updateProduct(Product element) {
    _loadedProducts[selectedElementIndex] = element;
        toggleRefresh(_refreshProducts);

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
        _cleanLastSelectedRow();

    loadedProductFamillies.remove(element);
    toggleRefresh(_refreshProductsFamily);
  }
  
  void setAllFamillies(List<ProductFamily> elements) {
    loadedProductFamillies.clear();
    loadedProductFamillies.addAll(elements);
    toggleRefresh(_refreshProductsFamily);
  }


  void updateProductFamily(ProductFamily element) {
    loadedProductFamillies[selectedElementIndex] = element;
  }

  void updateProductFamilyAt(ProductFamily family,int index) {
    loadedProductFamillies[index] = family;
    toggleRefresh(_refreshProductsFamily);
  }

}
