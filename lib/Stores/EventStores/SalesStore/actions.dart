import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
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
  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  AddPurchase(this.recordsLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;

    recordsLiveModel.addActiveSaleRecord();

    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, -1);
    });

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
  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  RemovePurchase(this.recordsLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;

    recordsLiveModel.removeSaleRecord(record);

    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, -1);
    });

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
  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  RemovePurchaseProduct(this.recordsLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProductWrapper wrapper = event.data as RecordProductWrapper;

    Record record = wrapper.record;
    RecordProduct recordProduct = wrapper.recordProduct;

    record.products.remove(recordProduct.timeStamp);

    stockLiveModel.reclaimStock(recordProduct.reference, recordProduct.colorId,
        recordProduct.sizeId, 1);

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
  final RecordsLiveDataModel recordsLiveModel;

  ClearPurchases(this.recordsLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    recordsLiveModel.clearSaleRecord();
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
  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  AddDeposit(this.recordsLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;

    recordsLiveModel.setActiveDepositRecord(record);
    recordsLiveModel.addActiveDepositRecord();

    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, -1);
    });

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
  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  RemoveDeposit(this.recordsLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Record record = event.data as Record;

    recordsLiveModel.removeDepositRecord(record);

    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, 1);
    });

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
  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  RemoveDepositProduct(this.recordsLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProductWrapper wrapper = event.data as RecordProductWrapper;

    Record record = wrapper.record;

    RecordProduct product = wrapper.recordProduct;

    stockLiveModel.reclaimStock(
        product.reference, product.colorId, product.sizeId, 1);

    recordsLiveModel.removeDepositProduct(record, product);

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
  final RecordsLiveDataModel recordsLiveModel;

  QuickSearchDeposit(this.recordsLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Map<String, dynamic> query = event.data as Map<String, dynamic>;

    void onResult(List<Record> records) {
      recordsLiveModel.setAllDeposits(records);
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
  final RecordsLiveDataModel recordsLiveModel;

  ClearDeposits(this.recordsLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    recordsLiveModel.clearDeposits();
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
  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  AddOrder(this.ordersLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Order order = event.data as Order;
    ordersLiveModel.addOrder(order);

    order.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, -1);
    });

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
  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  AddOrderProduct(this.ordersLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProduct orderProduct = event.data as RecordProduct;
    ordersLiveModel.addOrderProduct(orderProduct);

    stockLiveModel.reclaimStock(
        orderProduct.reference, orderProduct.colorId, orderProduct.sizeId, -1);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: orderProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name,
              ordersLiveModel.selectedOrder.timeStamp)
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
  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  RemoveOrder(this.ordersLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RemoveRequestWrapper<Order> wrapper =
        event.data as RemoveRequestWrapper<Order>;

    ordersLiveModel.removeOrder(wrapper.instance, wrapper.index!);

    wrapper.instance.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, -1);
    });

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
  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  RemoveOrderProduct(this.ordersLiveModel, this.stockLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    RecordProduct orderProduct = event.data as RecordProduct;

    ordersLiveModel.removeOrderProduct(orderProduct);

    stockLiveModel.reclaimStock(
        orderProduct.reference, orderProduct.colorId, orderProduct.sizeId, 1);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: orderProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name,
              ordersLiveModel.selectedOrder.timeStamp)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: requestData,
        event: DatabaseEvent.deleteOrderProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    Order order = ordersLiveModel.selectedOrder;
    int orderIndex = ordersLiveModel.selectedOrderIndex;
    if (order.products.isEmpty) {
      _removeOrder(order, orderIndex);
    } else {

    final ModifierBuilder modifierBuilder = ModifierBuilder()
        .set(OrderFields.remainingPayement.name, order.remainingPayement)
        .set(OrderFields.totalPrice.name, order.totalPrice);

      _updateOrder(order,orderIndex,modifierBuilder.map);
    }
    
    EventResponse response = EventResponse(
        data: orderProduct,
        event: SalesEvents.removeOrderProduct.name,
        status: OperationStatus.success.name);

    return response;
  }

  void _updateOrder(Order order, int orderIndex, AppJson updatedValues) {
    ordersLiveModel.updateOrder(order, orderIndex);
    
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
    ordersLiveModel.removeOrder(order, orderIndex);

    order.products.forEach((key, product) {
      stockLiveModel.reclaimStock(
          product.reference, product.colorId, product.sizeId, -1);
    });

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
  final OrdersLiveDataModel ordersLiveModel;

  UpdateOrder(this.ordersLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    AppJson updatedValues = event.data as AppJson;

    Order order = ordersLiveModel.selectedOrder;
    int index = ordersLiveModel.selectedOrderIndex;

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: order,
      ServicesData.updatedValues: updatedValues,
    };

    ServiceMessage message = ServiceMessage<Order>(
        data: requestData,
        event: DatabaseEvent.updateOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    ordersLiveModel.updateOrder(order, index);
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
  final OrdersLiveDataModel ordersLiveModel;

  SearchOrder(this.ordersLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    AppJson query = event.data as AppJson;

    void onResult(List<Order> order) {
      ordersLiveModel.setAllOrders(order);
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
