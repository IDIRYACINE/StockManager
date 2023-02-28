import 'package:stock_manager/Domain/Models/product.dart';

class StockEvent {}

class AddProduct extends StockEvent{
  final Product product;

  AddProduct(this.product);
}

class RemoveProduct extends StockEvent{}

class UpdateProduct extends StockEvent{}

class AddProductModel extends StockEvent{}

class RemoveProductModel extends StockEvent{}

class UpdateProductModel extends StockEvent{}

class AddProductFamily extends StockEvent{}

class RemoveProductFamily extends StockEvent{}

class UpdateProductFamily extends  StockEvent{}

class SearchProduct extends StockEvent{}

class SearchProductFamily extends StockEvent{}

class RefreshProduct extends StockEvent{}

class RefreshProductFamily extends StockEvent{}