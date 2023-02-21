import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Types/special_enums.dart';

class AddPurchase implements StoreAction {
  

  AddPurchase( );

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;


    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: record,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertPurchaseRecord,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: record,
        event: PurchaseEvents.addPurchase.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.addPurchase.index;
  }

  @override
  String getName() {
    return PurchaseEvents.addPurchase.name;
  }
}

class RemovePurchase implements StoreAction {
  

  RemovePurchase( );

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;


    Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: record,
        event: PurchaseEvents.removePurchase.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.removePurchase.index;
  }

  @override
  String getName() {
    return PurchaseEvents.removePurchase.name;
  }
}

class RemovePurchaseProduct implements StoreAction {
  

  RemovePurchaseProduct( );

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProductWrapper wrapper = event.data as RecordProductWrapper;

    Record record = wrapper.record;
    RecordProduct recordProduct = wrapper.recordProduct;

    record.products.remove(recordProduct.timeStamp);


    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: recordProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name, recordProduct.timeStamp)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecordProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: recordProduct,
        event: PurchaseEvents.removePurchaseProduct.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.removePurchaseProduct.index;
  }

  @override
  String getName() {
    return PurchaseEvents.removePurchaseProduct.name;
  }
}

class ClearPurchases implements StoreAction {
  

  ClearPurchases();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    return null;
  }

  @override
  int getId() {
    return SalesEvents.clearPurchase.index;
  }

  @override
  String getName() {
    return PurchaseEvents.clearPurchase.name;
  }
}

class AddDeposit implements StoreAction {
  

  AddDeposit( );

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;

    
    


    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: record,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertPurchaseRecord,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: record,
        event: DepositEvents.addDeposit.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.addDeposit.index;
  }

  @override
  String getName() {
    return DepositEvents.addDeposit.name;
  }
}

class RemoveDeposit implements StoreAction {
  

  RemoveDeposit( );

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;


    Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: record,
        event: DepositEvents.removeDeposit.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.removeDeposit.index;
  }

  @override
  String getName() {
    return DepositEvents.removeDeposit.name;
  }
}

class RemoveDepositProduct implements StoreAction {
  
  
  RemoveDepositProduct( );

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProductWrapper wrapper = event.data as RecordProductWrapper;

    Record record = wrapper.record;

    RecordProduct product = wrapper.recordProduct;

    


    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: product,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(RecordFields.timeStamp.name, record.timeStamp)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecordProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: product,
        event: DepositEvents.removeDepositProduct.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.removeDepositProduct.index;
  }

  @override
  String getName() {
    return DepositEvents.removeDepositProduct.name;
  }
}

class QuickSearchDeposit implements StoreAction {
  

  QuickSearchDeposit();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Map<String, dynamic> query = event.data as Map<String, dynamic>;

    void onResult(List<Record> records) {
      
    }

    Map<ServicesData, dynamic> requestData = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<Record>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseRecord,
        data: requestData,
        hasCallback: true,
        callback: onResult);

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return SalesEvents.quickSearchDeposit.index;
  }

  @override
  String getName() {
    return DepositEvents.quickSearchDeposit.name;
  }
}

class ClearDeposits implements StoreAction {
  

  ClearDeposits();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    return null;
  }

  @override
  int getId() {
    return SalesEvents.clearDeposit.index;
  }

  @override
  String getName() {
    return PurchaseEvents.clearPurchase.name;
  }
}

class AddOrder implements StoreAction {
  
  
  AddOrder();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Order order = event.data as Order;


    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: order,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertOrder,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: order,
        event: SalesEvents.addOrder.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.addOrder.index;
  }

  @override
  String getName() {
    return OrderEvents.addOrder.name;
  }
}

class AddOrderProduct implements StoreAction {
  
  
  AddOrderProduct();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProduct orderProduct = event.data as RecordProduct;

    

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: orderProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name,
              0)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: requestData,
        event: DatabaseEvent.insertOrderProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: orderProduct,
        event: SalesEvents.addOrderProduct.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.addOrderProduct.index;
  }

  @override
  String getName() {
    return OrderEvents.addOrderProduct.name;
  }
}

class RemoveOrder implements StoreAction {
  
  
  RemoveOrder();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RemoveRequestWrapper<Order> wrapper =
        event.data as RemoveRequestWrapper<Order>;



    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: wrapper.instance
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(
        data: wrapper.instance,
        event: SalesEvents.removeOrder.name,
        status: OperationStatus.success.name);

    return response;
  }

  @override
  int getId() {
    return SalesEvents.removeOrder.index;
  }

  @override
  String getName() {
    return OrderEvents.removeOrder.name;
  }
}

class RemoveOrderProduct implements StoreAction {
  
  
  RemoveOrderProduct();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProduct orderProduct = event.data as RecordProduct;



    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: orderProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name,
              0)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: requestData,
        event: DatabaseEvent.deleteOrderProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    Order order = Order.defaultInstance();
    int orderIndex = 0;

    if (order.products.isEmpty) {
      _removeOrder(order, orderIndex);
    } else {
      final ModifierBuilder modifierBuilder = ModifierBuilder()
          .set(OrderFields.remainingPayement.name, order.remainingPayement)
          .set(OrderFields.totalPrice.name, order.totalPrice);

      _updateOrder(order, orderIndex, modifierBuilder.map);
    }

    EventResponse response = EventResponse(
        data: orderProduct,
        event: SalesEvents.removeOrderProduct.name,
        status: OperationStatus.success.name);

    return response;
  }

  void _updateOrder(Order order, int orderIndex, AppJson updatedValues) {

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: order,
      ServicesData.updatedValues: updatedValues,
    };

    ServiceMessage message = ServiceMessage<Order>(
        data: requestData,
        event: DatabaseEvent.updateOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  void _removeOrder(Order order, int orderIndex) {


    Map<ServicesData, dynamic> requestData = {ServicesData.instance: order};

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  @override
  int getId() {
    return SalesEvents.removeOrderProduct.index;
  }

  @override
  String getName() {
    return OrderEvents.removeOrderProduct.name;
  }
}

class UpdateOrder implements StoreAction {
  

  UpdateOrder();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    AppJson updatedValues = event.data as AppJson;

    Order order = Order.defaultInstance();

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: order,
      ServicesData.updatedValues: updatedValues,
    };

    ServiceMessage message = ServiceMessage<Order>(
        data: requestData,
        event: DatabaseEvent.updateOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    return null;
  }

  @override
  int getId() {
    return SalesEvents.updateOrder.index;
  }

  @override
  String getName() {
    return OrderEvents.updateOrder.name;
  }
}

class SearchOrder implements StoreAction {

  SearchOrder();

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    AppJson query = event.data as AppJson;

    void onResult(List<Order> order) {
    }

    Map<ServicesData, dynamic> requestData = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<Order>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchOrders,
        data: requestData,
        hasCallback: true,
        callback: onResult);

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return SalesEvents.searchOrders.index;
  }

  @override
  String getName() {
    return OrderEvents.searchOrders.name;
  }
}
