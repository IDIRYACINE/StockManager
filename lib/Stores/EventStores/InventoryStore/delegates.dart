import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Types/special_enums.dart';

class ProductStoreHandler implements ProductStoreDelegate {
  ProductStoreHandler(this.stockLiveDataModel);

  final StockLiveDataModel stockLiveDataModel;

  @override
  Future<EventResponse?> addProduct(StoreEvent event) async {
    Product product = event.data as Product;

    stockLiveDataModel.addProduct(product);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: product,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  Future<EventResponse?> removeProduct(StoreEvent event) async {
    Product product = event.data as Product;
    stockLiveDataModel.deleteProduct(product);

    Map<ServicesData, dynamic> reauestData = {ServicesData.instance: product};
    ServiceMessage message = ServiceMessage(
        data: reauestData,
        event: DatabaseEvent.deleteProduct,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  Future<EventResponse?> searchProducts(StoreEvent event) async {
    Map<ServicesData, dynamic> requestData = {
      ServicesData.databaseSelector:
          (event.data == null) ? SelectorBuilder().map : event.data
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
      data: requestData,
      event: DatabaseEvent.searchProduct,
      service: AppServices.database,
      callback: (products) => stockLiveDataModel.setAllProducts(products),
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  Future<EventResponse?> updateProduct(StoreEvent event) async {
    UpdateRequestWrapper<Product> wrapper =
        event.data as UpdateRequestWrapper<Product>;

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
    return null;
  }
}

class CategoryStoreHandler implements CategoryStoreDelegate {
  CategoryStoreHandler(this.stockLiveDataModel);

  final StockLiveDataModel stockLiveDataModel;

  @override
  Future<EventResponse?> addCategory(StoreEvent event) async {
    ProductFamily family = event.data as ProductFamily;

    stockLiveDataModel.addProductFamily(family);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: family,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertProductFamily,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  Future<EventResponse?> removeCategory(StoreEvent event) async {
    ProductFamily family = event.data as ProductFamily;

    stockLiveDataModel.deleteProductFamily(family);

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: family};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteProductFamily,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  Future<EventResponse?> searchCategories(StoreEvent event) async {
    Map<ServicesData, dynamic> requestData = (event.data == null)
        ? {ServicesData.databaseSelector: {}}
        : event.data as Map<ServicesData, dynamic>;

    ServiceMessage message = ServiceMessage<List<ProductFamily>>(
      data: requestData,
      event: DatabaseEvent.loadProductFamillies,
      service: AppServices.database,
      callback: (families) => stockLiveDataModel.setAllFamillies(families),
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  Future<EventResponse?> updateCategory(StoreEvent event) async {
    UpdateRequestWrapper<ProductFamily> wrapper =
        event.data as UpdateRequestWrapper<ProductFamily>;

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
    return null;
  }
}
