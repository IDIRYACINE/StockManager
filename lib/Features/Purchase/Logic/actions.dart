import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Types/special_enums.dart';

Future<void> addPurchase(Record record) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: record,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.insertPurchaseRecord,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> removePurchase(Record record) async {
  Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.deletePurchaseRecord,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}

Future<void> removePurchaseProduct(RecordProductWrapper wrapper) async {
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
}

Future<void> addDeposit(Record record) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: record,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.insertPurchaseRecord,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> removeDeposit(Record record) async {
  Map<ServicesData, dynamic> requestData = {ServicesData.instance: record};
  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.deletePurchaseRecord,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}

Future<void> removeDepositProduct(RecordProductWrapper wrapper) async {
  Record record = wrapper.record;

  RecordProduct product = wrapper.recordProduct;

  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: product,
    ServicesData.databaseSelector:
        SelectorBuilder().eq(RecordFields.timeStamp.name, record.timeStamp).map
  };

  ServiceMessage message = ServiceMessage<List<Product>>(
      data: requestData,
      event: DatabaseEvent.deletePurchaseRecordProduct,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> quickSearchDeposit(AppJson query) async {
  void onResult(List<Record> records) {}

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
}

Future<void> addOrder(Order order) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: order,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.insertOrder,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> addOrderProduct(RecordProduct orderProduct) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: orderProduct,
    ServicesData.databaseSelector:
        SelectorBuilder().eq(OrderFields.timeStamp.name, 0).map
  };

  ServiceMessage message = ServiceMessage<List<Product>>(
      data: requestData,
      event: DatabaseEvent.insertOrderProduct,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

Future<void> removeOrder(RemoveRequestWrapper<Order> wrapper) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: wrapper.instance
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.deleteOrder,
      service: AppServices.database);
  ServicesStore.instance.sendMessage(message);
}

Future<void> removeOrderProduct(RecordProduct orderProduct) async {
  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: orderProduct,
    ServicesData.databaseSelector:
        SelectorBuilder().eq(OrderFields.timeStamp.name, 0).map
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

Future<void> updateOrder(AppJson updatedValues) async {
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
}

Future<void> searchOrder(AppJson query) async {
  void onResult(List<Order> order) {}

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
}
