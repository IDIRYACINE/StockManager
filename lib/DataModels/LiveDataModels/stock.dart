import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class StockLiveDataModel {
  final _ProducFamilyRegister _productFamilyRegister = _ProducFamilyRegister();
  final _ProductRegister _productRegister = _ProductRegister();

  void addProduct(Product element) {
    _productRegister.addProduct(element);
  }

  void deleteProduct(Product element) {
    _productRegister.deleteProduct(element);
  }

  void setAllProducts(Iterable<Product> elements) {
    _productRegister.setAllProducts(elements);
  }

  void updateProduct(Product element, int index) {
    _productRegister.updateProduct(element, index);
  }

  void addProductFamily(ProductFamily element) {
    _productFamilyRegister.addProductFamily(element);
  }

  void clearProductFamillies() {
    _productFamilyRegister.clearProductFamillies();
  }

  void deleteProductFamily(ProductFamily element) {
    _productFamilyRegister.deleteProductFamily(element);
  }

  void setAllFamillies(List<ProductFamily> elements) {
    _productFamilyRegister.setAllFamillies(elements);
  }

  void updateProductFamily(ProductFamily family, int index) {
    _productFamilyRegister.updateProductFamily(family, index);
  }

  Product? searchProduct(String key) {
    return _productRegister.searchProduct(key);
  }

  ProductFamily? searchProductFamily(String key) {
    return _productFamilyRegister.searchProductFamily(key);
  }

  void reclaimStock(String key,String colorKey,String sizeKey, int quantity) {
    _productRegister.reclaimStock(key, colorKey,sizeKey,quantity);
  }

  ValueListenable<bool> get refreshProductsFamily => _productFamilyRegister.refreshProductsFamily;
  int get productFamilysCount => _productFamilyRegister.productFamilysCount;
  ProductFamily productFamilyAt(int index) =>
      _productFamilyRegister.productFamilyAt(index);
  List<ProductFamily> get loadedProductFamillies =>
      _productFamilyRegister.loadedProductFamillies;

  ValueListenable<bool> get refreshProducts => _productRegister.refreshProducts;
  int get productsCount => _productRegister.productsCount;
  Product productAt(int index) => _productRegister.productAt(index);

}

class _ProducFamilyRegister {
  final List<ProductFamily> loadedProductFamillies = [];
  final ValueNotifier<bool> refreshProductsFamily = ValueNotifier(false);
  final Map<String, ProductFamily> _familyRegister = {};

  int get productFamilysCount => loadedProductFamillies.length;
  ProductFamily productFamilyAt(int index) => loadedProductFamillies[index];

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void addProductFamily(ProductFamily element) {
    loadedProductFamillies.add(element);
    _familyRegister[element.reference] = element;
    toggleRefresh(refreshProductsFamily);
  }

  void clearProductFamillies() {
    loadedProductFamillies.clear();
    toggleRefresh(refreshProductsFamily);
  }

  void deleteProductFamily(ProductFamily element) {
    loadedProductFamillies.remove(element);
    _familyRegister.remove(element.reference);
    toggleRefresh(refreshProductsFamily);
  }

  void setAllFamillies(List<ProductFamily> elements) {
    loadedProductFamillies.clear();
    loadedProductFamillies.addAll(elements);
    for (ProductFamily element in elements) {
      _familyRegister[element.reference] = element;
    }
    toggleRefresh(refreshProductsFamily);
  }

  void updateProductFamily(ProductFamily family, int index) {
    loadedProductFamillies[index] = family;
    toggleRefresh(refreshProductsFamily);
  }

  ProductFamily? searchProductFamily(String key) {
    return _familyRegister[key];
  }
}

class _ProductRegister {
  final List<Product> _loadedProducts = [];
  final ValueNotifier<bool> refreshProducts = ValueNotifier(false);

  int get productsCount => _loadedProducts.length;
  final Map<String, Product> _productsRegister = {};

  void toggleRefresh(ValueNotifier<bool> refresh) {
    refresh.value = !refresh.value;
  }

  void addProduct(Product element) {
    _registerProduct(element);
    _loadedProducts.add(element);
    toggleRefresh(refreshProducts);
  }

  void deleteProduct(Product element) {
    _unregsiterProduct(element.reference);

    _loadedProducts.remove(element);
    toggleRefresh(refreshProducts);
  }

  void setAllProducts(Iterable<Product> elements) {
    _loadedProducts.clear();
    for (Product element in elements) {
      _loadedProducts.add(element);
      _registerProduct(element);
    }
    toggleRefresh(refreshProducts);
  }

  void updateProduct(Product element, int index) {
    _registerProduct(element);
    _loadedProducts[index] = element;
    toggleRefresh(refreshProducts);
  }

  Product productAt(int index) => _loadedProducts[index];

  void _registerProduct(Product product) {
    _productsRegister[product.reference] = product;
  }

  void _unregsiterProduct(String key) {
    _productsRegister.remove(key);
  }

  Product? searchProduct(String key) {
    return _productsRegister[key];
  }

  void reclaimStock(String key,String colorKey,String sizeKey, int quantity) {
    Product? product = searchProduct(key);
    if (product != null) {
      product.totalQuantity += quantity;
      product.models[colorKey]?.sizes[sizeKey]?.quantity += quantity;
    }
    toggleRefresh(refreshProducts);
  }
}
