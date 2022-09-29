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

class PurchaseStoreHandler implements PurchaseStoreDelegate {
  PurchaseStoreHandler(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  Future<EventResponse?> addPurchase(StoreEvent? event) async {
    Record record = event!.data as Record;

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
  Future<EventResponse?> addPurchaseProduct(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> removePurchase(StoreEvent? event) async {
    Record record = event!.data as Record;

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
  Future<EventResponse?> removePurchaseProduct(StoreEvent? event) async {
    RecordProductWrapper wrapper = event!.data as RecordProductWrapper;

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
  Future<EventResponse?> updatePurchase(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> updatePurchaseProduct(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> clearPurchase(StoreEvent? event) async {
    recordsLiveModel.clearSaleRecord();
    return null;
  }
}

class DepositStoreHandler implements DepositStoreDelegate {
  DepositStoreHandler(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  Future<EventResponse?> addDeposit(StoreEvent? event) async {
    Record record = event!.data as Record;

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
  Future<EventResponse?> addDepositProduct(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> removeDeposit(StoreEvent? event) async {
    Record record = event!.data as Record;

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
    return null;
  }

  @override
  Future<EventResponse?> removeDepositProduct(StoreEvent? event) async {
    RecordProductWrapper wrapper = event!.data as RecordProductWrapper;

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
    return null;
  }

  @override
  Future<EventResponse?> updateDeposit(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> updateDepositProduct(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> clearDeposit(StoreEvent? event) async {
    recordsLiveModel.clearDeposits();
    return null;
  }

  @override
  Future<EventResponse?> quickSearchDeposit(StoreEvent? event) async {
    Map<String, dynamic> query = event!.data as Map<String, dynamic>;

    void _onResult(List<Record> records) {
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
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
    return null;
  }
}

class OrderStoreHandler implements OrderStoreDelegate {
  OrderStoreHandler(this.ordersLiveModel, this.stockLiveModel);

  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  Future<EventResponse?> addOrder(StoreEvent? event) async {
    Order order = event!.data as Order;
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
    return null;
  }

  @override
  Future<EventResponse?> addOrderProduct(StoreEvent? event) async {
    RecordProduct orderProduct = event!.data as RecordProduct;
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
    return null;
  }

  @override
  Future<EventResponse?> removeOrder(StoreEvent? event) async {
    RemoveRequestWrapper<Order> wrapper =
        event!.data as RemoveRequestWrapper<Order>;

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
    return null;
  }

  @override
  Future<EventResponse?> removeOrderProduct(StoreEvent? event) async {
    RecordProduct orderProduct = event!.data as RecordProduct;

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

    if (order.products.isEmpty) {
      int index = ordersLiveModel.selectedOrderIndex;
      ordersLiveModel.removeOrder(order, index);
      StoreEvent removeEvent = StoreEvent(
          data: order, broadcast: false, event: '', notifyEmitteur: false);
      removeOrder(removeEvent);
    } else {
      final ModifierBuilder modifierBuilder = ModifierBuilder()
          .set(OrderFields.remainingPayement.name, order.remainingPayement)
          .set(OrderFields.totalPrice.name, order.totalPrice);

      StoreEvent updateEvent = StoreEvent(
          data: modifierBuilder.map,
          broadcast: false,
          event: '',
          notifyEmitteur: false);
      updateOrder(updateEvent);
    }
    return null;
  }

  @override
  Future<EventResponse?> updateOrder(StoreEvent? event) async {
    AppJson updatedValues = event!.data as AppJson;

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
  Future<EventResponse?> updateOrderProduct(StoreEvent? event) async {
    throw UnimplementedError();
  }

  @override
  Future<EventResponse?> searchOrders(StoreEvent? event) async {
    AppJson query = event!.data as AppJson;

    void _onResult(List<Order> order) {
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
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
    return null;
  }
}
