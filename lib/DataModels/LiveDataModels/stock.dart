import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class StockLiveDataModel   {

  final List<ProductFamily> loadedProductFamillies = [];

  final ValueNotifier<bool> _refreshProductsFamily = ValueNotifier(false);

  ValueNotifier<bool> get refreshProductsFamily => _refreshProductsFamily;

  int get productFamilysCount => loadedProductFamillies.length;

  ProductFamily productFamily(int index) => loadedProductFamillies[index];

  final List<Product> _loadedProducts = [];

  final ValueNotifier<bool> _refreshProducts = ValueNotifier(false);

  ValueListenable<bool> get refreshProducts => _refreshProducts;

  int get productsCount => _loadedProducts.length;

  Product product(int index) => _loadedProducts[index];

  final Map<String, Product> _productsRegister = {};

  VoidCallback? updateSelectedRow;

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void addProduct(Product element) {
    _registerProduct(element);
    _loadedProducts.add(element);
    toggleRefresh(_refreshProducts);
  }

  void deleteProduct(Product element) {
    _unregsiterProduct(element.reference);

    _loadedProducts.remove(element);
    toggleRefresh(_refreshProducts);
  }

  void setAllProducts(Iterable<Product> elements) {
    //TODO
    _loadedProducts.clear();
    _loadedProducts.addAll(elements);
    toggleRefresh(_refreshProducts);
  }

  void updateProduct(Product element, int index) {
    _registerProduct(element);
    _loadedProducts[index] = element;
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
    loadedProductFamillies.remove(element);
    toggleRefresh(_refreshProductsFamily);
  }

  void setAllFamillies(List<ProductFamily> elements) {
    loadedProductFamillies.clear();
    loadedProductFamillies.addAll(elements);
    toggleRefresh(_refreshProductsFamily);
  }

  void updateProductFamily(ProductFamily family, int index) {
    loadedProductFamillies[index] = family;
    toggleRefresh(_refreshProductsFamily);
  }

  void _registerProduct(Product product) {
    _productsRegister[product.reference] = product;
  }

  void _unregsiterProduct(String key) {
    _productsRegister.remove(key);
  }

  Product? searchProduct(String key) {
    return _productsRegister[key];
  }

  void reclaimStock(String key,int quantity){
    Product? product = searchProduct(key);
    if(product != null){
      product.totalQuantity += quantity;
    }
    toggleRefresh(_refreshProducts);
  }

}
