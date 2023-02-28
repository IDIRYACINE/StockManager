import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

class StockEvent {}

class AddProduct extends StockEvent{
  final Product product;

  AddProduct(this.product);
}

class RemoveProduct extends StockEvent{
  final Product product;

  RemoveProduct(this.product);
}

class UpdateProduct extends StockEvent{
  final UpdateRequestWrapper<Product> updateWrapper;
  
  UpdateProduct(this.updateWrapper);
}

class LoadProducts extends StockEvent{
  final List<Product> products;

  LoadProducts(this.products);
}

class RefreshProducts extends StockEvent{}

class AddProductModel extends StockEvent{}

class RemoveProductModel extends StockEvent{}

class UpdateProductModel extends StockEvent{}

class AddProductFamily extends StockEvent{}

class RemoveProductFamily extends StockEvent{}

class UpdateProductFamily extends  StockEvent{}

class SearchProduct extends StockEvent{}

class SearchProductFamily extends StockEvent{}

class RefreshProductFamily extends StockEvent{}