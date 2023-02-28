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

  copyWith({required List<Product> products}) {}
}