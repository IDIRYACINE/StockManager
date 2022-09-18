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
import 'package:stock_manager/Types/i_editors.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/special_enums.dart';

class PurchaseStoreHandler implements PurchaseStoreDelegate {
  PurchaseStoreHandler(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  EventResponse addPurchase(Object? data) {
    Record record = data as Record;

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

    EventResponse response =
        EventResponse(event: PurchaseEvents.addPurchase.name);

    return response;
  }

  @override
  EventResponse addPurchaseProduct(Object? data) {
    // TODO: implement addPurchaseProduct
    throw UnimplementedError();
  }

  @override
  EventResponse removePurchase(Object? data) {
    Record record = data as Record;

    recordsLiveModel.removeSaleRecord(record);

    record.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, 1);
    });

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    EventResponse response =
        EventResponse(event: PurchaseEvents.removePurchase.name);

    return response;
  }

  @override
  EventResponse removePurchaseProduct(Object? data) {
    RecordProductWrapper wrapper = data as RecordProductWrapper;

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

    EventResponse response =
        EventResponse(event: PurchaseEvents.removePurchaseProduct.name);

    return response;
  }

  @override
  EventResponse updatePurchase(Object? data) {
    throw UnimplementedError();
  }

  @override
  EventResponse updatePurchaseProduct(Object? data) {
    throw UnimplementedError();
  }

  @override
  EventResponse clearPurchase(Object? data) {
    recordsLiveModel.clearSaleRecord();

    EventResponse response =
        EventResponse(event: PurchaseEvents.clearPurchase.name);

    return response;
  }
}

class DepositStoreHandler implements DepositStoreDelegate {
  DepositStoreHandler(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  EventResponse addDeposit(Object? data) {
    Record record = data as Record;

    recordsLiveModel.addActiveDepositRecord();

    record.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, -1);
    });

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: record,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertPurchaseRecord,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response =
        EventResponse(event: DepositEvents.addDeposit.name);

    return response;
  }

  @override
  EventResponse addDepositProduct(Object? data) {
    throw UnimplementedError();
  }

  @override
  EventResponse removeDeposit(Object? data) {
    Record record = data as Record;

    recordsLiveModel.removeDepositRecord(record);

    record.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, 1);
    });

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    EventResponse response =
        EventResponse(event: DepositEvents.removeDeposit.name);

    return response;
  }

  @override
  EventResponse removeDepositProduct(Object? data) {
    RecordProductWrapper wrapper = data as RecordProductWrapper;

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

    EventResponse response =
        EventResponse(event: DepositEvents.removeDepositProduct.name);

    return response;
  }

  @override
  EventResponse updateDeposit(Object? data) {
    // TODO: implement updateDeposit
    throw UnimplementedError();
  }

  @override
  EventResponse updateDepositProduct(Object? data) {
    // TODO: implement updateDepositProduct
    throw UnimplementedError();
  }

  @override
  EventResponse clearDeposit(Object? data) {
    recordsLiveModel.clearDeposits();

    EventResponse response =
        EventResponse(event: DepositEvents.clearDeposit.name);

    return response;
  }

  @override
  EventResponse quickSearchDeposit(Object? data) {
    Map<String, dynamic> query = data as Map<String, dynamic>;

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

    EventResponse response =
        EventResponse(event: DepositEvents.quickSearchDeposit.name);

    return response;
  }
}

class OrderStoreHandler implements OrderStoreDelegate {
  OrderStoreHandler(this.ordersLiveModel, this.stockLiveModel);

  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  EventResponse addOrder(Object? data) {
    Order order = data as Order;
    ordersLiveModel.addOrder(order);

    order.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, -1);
    });

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: order,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertOrder,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(event: OrderEvents.addOrder.name);

    return response;
  }

  @override
  EventResponse addOrderProduct(Object? data) {
    RecordProduct orderProduct = data as RecordProduct;
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

    EventResponse response =
        EventResponse(event: OrderEvents.addOrderProduct.name);

    return response;
  }

  @override
  EventResponse removeOrder(Object? data) {
    Order order = data as Order;

    ordersLiveModel.removeOrder(order, 0); //TODO create a wrapper

    ordersLiveModel.addOrder(order);

    order.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, 1);
    });

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: order};

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    EventResponse response = EventResponse(event: OrderEvents.removeOrder.name);

    return response;
  }

  @override
  EventResponse removeOrderProduct(Object? data) {
    RecordProduct orderProduct = data as RecordProduct;

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
      removeOrder(order);
    } else {
      final ModifierBuilder modifierBuilder = ModifierBuilder()
          .set(OrderFields.remainingPayement.name, order.remainingPayement)
          .set(OrderFields.totalPrice.name, order.totalPrice);

      updateOrder(modifierBuilder.map);
    }

    EventResponse response =
        EventResponse(event: OrderEvents.removeOrderProduct.name);

    return response;
  }

  @override
  EventResponse updateOrder(Object? data) {
    AppJson updatedValues = data as AppJson;

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

    EventResponse response = EventResponse(event: OrderEvents.updateOrder.name);

    return response;
  }

  @override
  EventResponse updateOrderProduct(Object? data) {
    // TODO: implement updateOrderProduct
    throw UnimplementedError();
  }

  @override
  EventResponse searchOrders(Object? data) {
    AppJson query = data as AppJson;

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

    EventResponse response =
        EventResponse(event: OrderEvents.searchOrders.name);

    return response;
  }
}
