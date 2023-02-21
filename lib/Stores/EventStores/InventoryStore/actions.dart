import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Types/special_enums.dart';

class AddProduct implements StoreAction {
  

  AddProduct();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Product product = event.data as Product;

    

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
  int getId() {
    return StockEvents.addStockProduct.index;
  }

  @override
  String getName() {
    return StockEvents.addStockProduct.name;
  }
}

class RemoveProduct implements StoreAction {
  

  RemoveProduct();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Product product = event.data as Product;

    Map<ServicesData, dynamic> reauestData = {ServicesData.instance: product};
    ServiceMessage message = ServiceMessage(
        data: reauestData,
        event: DatabaseEvent.deleteProduct,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return StockEvents.removeStockProduct.index;
  }

  @override
  String getName() {
    return StockEvents.removeStockProduct.name;
  }
}

class SearchProducts implements StoreAction {
  

  SearchProducts();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Map<ServicesData, dynamic> requestData = {
      ServicesData.databaseSelector:
          (event.data == null) ? SelectorBuilder().map : event.data
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
      data: requestData,
      event: DatabaseEvent.searchProduct,
      service: AppServices.database,
      callback: (products) => {},
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return StockEvents.searchStockProducts.index;
  }

  @override
  String getName() {
    return StockEvents.searchStockProducts.name;
  }
}

class UpdateProduct implements StoreAction {
  

  UpdateProduct();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    UpdateRequestWrapper<Product> wrapper =
        event.data as UpdateRequestWrapper<Product>;


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

  @override
  int getId() {
    return StockEvents.updateStockProduct.index;
  }

  @override
  String getName() {
    return StockEvents.updateStockProduct.name;
  }
}

class AddCategory implements StoreAction {
  

  AddCategory();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    ProductFamily family = event.data as ProductFamily;


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
  int getId() {
    return StockEvents.addStockCategory.index;
  }

  @override
  String getName() {
    return StockEvents.addStockCategory.name;
  }
}

class RemoveCategory implements StoreAction {
  

  RemoveCategory();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    ProductFamily family = event.data as ProductFamily;


    Map<ServicesData, dynamic> requestData = {ServicesData.instance: family};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteProductFamily,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return StockEvents.removeStockCategory.index;
  }

  @override
  String getName() {
    return StockEvents.removeStockCategory.name;
  }
}

class SearchCategories implements StoreAction {
  

  SearchCategories();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Map<ServicesData, dynamic> requestData = (event.data == null)
        ? {ServicesData.databaseSelector: {}}
        : event.data as Map<ServicesData, dynamic>;

    ServiceMessage message = ServiceMessage<List<ProductFamily>>(
      data: requestData,
      event: DatabaseEvent.loadProductFamillies,
      service: AppServices.database,
      callback: (families) => {},
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return StockEvents.searchStockCategories.index;
  }

  @override
  String getName() {
    return StockEvents.searchStockCategories.name;
  }
}

class UpdateCategory implements StoreAction {
  

  UpdateCategory();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
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
    return null;
  }

  @override
  int getId() {
    return StockEvents.updateStockCategory.index;
  }

  @override
  String getName() {
    return StockEvents.updateStockCategory.name;
  }
}
