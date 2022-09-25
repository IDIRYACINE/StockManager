import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Types/special_enums.dart';

class PurchaseStoreHandler implements PurchaseStoreDelegate {
  PurchaseStoreHandler(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  Future<void> addPurchase(Object? data) async {
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
  }

  @override
  Future<void> addPurchaseProduct(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> removePurchase(Object? data) async {
    Record record = data as Record;

    recordsLiveModel.removeSaleRecord(record);

   
    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(product.reference, product.colorId, product.sizeId, -1);
    });

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> removePurchaseProduct(Object? data) async {
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
  }

  @override
  Future<void> updatePurchase(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updatePurchaseProduct(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> clearPurchase(Object? data) async {
    recordsLiveModel.clearSaleRecord();
  }
}

class DepositStoreHandler implements DepositStoreDelegate {
  DepositStoreHandler(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  Future<void> addDeposit(Object? data) async {
    
    Record record = data as Record;

    recordsLiveModel.setActiveDepositRecord(record);
    recordsLiveModel.addActiveDepositRecord();
    
    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(product.reference, product.colorId, product.sizeId, -1);
    });

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: record,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertPurchaseRecord,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> addDepositProduct(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> removeDeposit(Object? data) async {
    Record record = data as Record;

    recordsLiveModel.removeDepositRecord(record);

   
    record.products.forEach((key, product) {
      stockLiveModel.reclaimStock(product.reference, product.colorId, product.sizeId, 1);
    });

    Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> removeDepositProduct(Object? data) async {
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
  }

  @override
  Future<void> updateDeposit(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateDepositProduct(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> clearDeposit(Object? data) async {
    recordsLiveModel.clearDeposits();
  }

  @override
  Future<void> quickSearchDeposit(Object? data) async {
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
  }
}

class OrderStoreHandler implements OrderStoreDelegate {
  OrderStoreHandler(this.ordersLiveModel, this.stockLiveModel);

  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  @override
  Future<void> addOrder(Object? data) async {
    Order order = data as Order;
    ordersLiveModel.addOrder(order);

     order.products.forEach((key, product) {
      stockLiveModel.reclaimStock(product.reference, product.colorId, product.sizeId, -1);
    });


    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: order,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.insertOrder,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> addOrderProduct(Object? data) async {
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
  }

  @override
  Future<void> removeOrder(Object? data) async {
    RemoveRequestWrapper<Order> wrapper = data as RemoveRequestWrapper<Order>;

    ordersLiveModel.removeOrder(wrapper.instance, wrapper.index!);

    wrapper.instance.products.forEach((key, product) {
      stockLiveModel.reclaimStock(product.reference, product.colorId, product.sizeId, -1);
    });

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: wrapper.instance
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.deleteOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> removeOrderProduct(Object? data) async {
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
  }

  @override
  Future<void> updateOrder(Object? data) async {
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
  }

  @override
  Future<void> updateOrderProduct(Object? data) async {
    throw UnimplementedError();
  }

  @override
  Future<void> searchOrders(Object? data) async {
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
  }
}
