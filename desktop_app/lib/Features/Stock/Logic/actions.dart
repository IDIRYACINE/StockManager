import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

Future<void> addProduct(Product product) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: product,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.insertProduct,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> removeProduct(Product product) async {
  Map<ServicesData, dynamic> reauestData = {ServicesData.instance: product};
  ServiceMessage message = ServiceMessage(
      data: reauestData,
      event: DatabaseEvent.deleteProduct,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}

Future<void> searchProducts(Map<ServicesData, dynamic> requestData) async {
  ServiceMessage message = ServiceMessage<List<Product>>(
    data: requestData,
    event: DatabaseEvent.searchProduct,
    service: AppServices.database,
    callback: (products) => {},
    hasCallback: true,
  );

  ServicesStore.instance.sendMessage(message);
}

Future<void> updateProduct(UpdateRequestWrapper<Product> wrapper) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: wrapper.instance.reference,
    ServicesData.updatedValues: wrapper.updatedField,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.updateProduct,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}

Future<void> addCategory(ProductFamily family) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: family,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.insertProductFamily,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> removeCategory(ProductFamily family) async {
  Map<ServicesData, dynamic> requestData = {ServicesData.instance: family};
  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.deleteProductFamily,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}

Future<void> searchCategories(Map<ServicesData, dynamic> requestData) async {
  ServiceMessage message = ServiceMessage<List<ProductFamily>>(
    data: requestData,
    event: DatabaseEvent.loadProductFamillies,
    service: AppServices.database,
    callback: (families) => {},
    hasCallback: true,
  );

  ServicesStore.instance.sendMessage(message);
}

Future<void> updateCategory(UpdateRequestWrapper<ProductFamily> wrapper) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: wrapper.instance,
    ServicesData.databaseSelector: wrapper.updatedField,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.updateProductFamily,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}
