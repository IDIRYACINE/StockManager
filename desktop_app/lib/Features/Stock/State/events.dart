import 'package:stock_manager/DataModels/type_defs.dart';
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

class AddProductFamily extends StockEvent{
  final ProductFamily family;

  AddProductFamily(this.family);
}

class RemoveProductFamily extends StockEvent{
  final ProductFamily family;

  RemoveProductFamily(this.family);
}

class UpdateProductFamily extends  StockEvent{
  final UpdateRequestWrapper<ProductFamily> updateWrapper;

  UpdateProductFamily(this.updateWrapper);
}

class SearchProducts extends StockEvent{
  final AppJson query;

  SearchProducts(this.query);
}

class QuickSearchProducts extends StockEvent{
  final String barcode;

  QuickSearchProducts(this.barcode);

}

class SetQuickSearchProduct extends StockEvent{
  final Product? product;

  SetQuickSearchProduct(this.product);
}

class SearchProductFamily extends StockEvent{
  final AppJson query;

  SearchProductFamily(this.query);
}

class RefreshProductFamily extends StockEvent{}

class LoadProductFamillies extends StockEvent{
  final List<ProductFamily> productFamillies;

  LoadProductFamillies(this.productFamillies);
}