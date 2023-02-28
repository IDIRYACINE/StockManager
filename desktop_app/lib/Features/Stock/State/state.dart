import 'package:stock_manager/Domain/Models/product.dart';

class StockState{
  final List<ProductFamily> productFamillies;
  final List<Product> products;
  

  factory StockState.initial(){
    return StockState(productFamillies:[],products: []);
  }

  StockState({required this.productFamillies , required this.products});

  get productFamilysCount => productFamillies.length;

  get productsCount => products.length;

  productFamilyAt(int index) {
    return productFamillies[index];
  }


  productAt(int index) {
    return productFamillies[index];
  }

  StockState copyWith({ List<Product>? products , List<ProductFamily>? productFamillies}) {
    return StockState(
      products: products ?? this.products,
      productFamillies: productFamillies ?? this.productFamillies,
    );
  }

  List<Product> addProduct(Product product) {
    return [...products, product];
  }

  List<Product> removeProduct(Product product) {
    return products.where((element) => element.barcode != product.barcode).toList();
  }

  List<Product> updateProduct(Product product) {
    return products.map((element) => element.barcode == product.barcode ? product : element).toList();
  }
}