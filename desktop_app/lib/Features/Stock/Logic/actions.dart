import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

const _requesterId = 'StockBloc';

Future<void> addProduct(Product product) async {

  final eventData = RegisterProductEventData(product: product, requesterId: _requesterId);

  final event = RegisterProductEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> removeProduct(Product product) async {
  final eventData = DeleteProductEventData(product: product, requesterId: _requesterId);

  final event = DeleteProductEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> searchProducts(Map<ServicesData, dynamic> requestData) async {
  
}

Future<void> updateProduct(UpdateRequestWrapper<Product> wrapper) async {
  
}

Future<void> addCategory(ProductFamily family) async {
  
}

Future<void> removeCategory(ProductFamily family) async {
  
}

Future<void> searchCategories(Map<ServicesData, dynamic> requestData) async {
  
}

Future<void> updateCategory(UpdateRequestWrapper<ProductFamily> wrapper) async {
  
}
