import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Types/special_enums.dart';

class ProductStoreHandler implements ProductStoreDelegate {
  ProductStoreHandler(this.stockLiveDataModel);

  final StockLiveDataModel stockLiveDataModel;

  @override
  Future<void> addProduct(Object? data) async {
    Product product = data as Product;

    stockLiveDataModel.addProduct(product);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: product,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> removeProduct(Object? data) async {
    Product product = data as Product;
    stockLiveDataModel.deleteProduct(product);

    Map<ServicesData, dynamic> reauestData = {ServicesData.instance: product};
    ServiceMessage message = ServiceMessage(
        data: reauestData,
        event: DatabaseEvent.deleteProduct,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> searchProducts(Object? data) async {
    Map<ServicesData, dynamic> requestData = (data == null)
        ? {ServicesData.databaseSelector: {}}
        : data as Map<ServicesData, dynamic>;

    ServiceMessage message = ServiceMessage<List<Product>>(
      data: requestData,
      event: DatabaseEvent.loadProducts,
      service: AppServices.database,
      callback: (products) => stockLiveDataModel.setAllProducts(products),
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> updateProduct(Object? data) async {
    UpdateRequestWrapper<Product> wrapper =
        data as UpdateRequestWrapper<Product>;

    stockLiveDataModel.updateProduct(wrapper.instance, wrapper.index!);

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
}

class CategoryStoreHandler implements CategoryStoreDelegate {
  CategoryStoreHandler(this.stockLiveDataModel);

  final StockLiveDataModel stockLiveDataModel;

  @override
  Future<void> addCategory(Object? data) async {
    ProductFamily family = data as ProductFamily;

    stockLiveDataModel.addProductFamily(family);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: family,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertProductFamily,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> removeCategory(Object? data) async {
    ProductFamily family = data as ProductFamily;

    stockLiveDataModel.deleteProductFamily(family);

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: family};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteProductFamily,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> searchCategories(Object? data) async {
    Map<ServicesData, dynamic> requestData = (data == null)
        ? {ServicesData.databaseSelector: {}}
        : data as Map<ServicesData, dynamic>;

    ServiceMessage message = ServiceMessage<List<ProductFamily>>(
      data: requestData,
      event: DatabaseEvent.loadProductFamillies,
      service: AppServices.database,
      callback: (families) => stockLiveDataModel.setAllFamillies(families),
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> updateCategory(Object? data) async {
    UpdateRequestWrapper<ProductFamily> wrapper =
        data as UpdateRequestWrapper<ProductFamily>;

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: wrapper.instance,
      ServicesData.databaseSelector: wrapper.updatedField,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.updateProductFamily,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
    stockLiveDataModel.updateProductFamily(wrapper.instance, wrapper.index!);
  }
}
