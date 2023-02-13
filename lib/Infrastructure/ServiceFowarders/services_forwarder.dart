import 'dart:developer';
import 'dart:isolate';

import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Infrastructure/ServiceFowarders/repository_forwarder.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_infrastructre.dart';
import 'package:stock_manager/Types/special_enums.dart';

class ServicesForwarder {
  ServicesForwarder({required this.uiThreadPort}) {
    Database database = Database();
    _databaseForwarder = DatabaseFrowarder(database);

    _registerDatabaseCallbacks();
  }

  late DatabaseFrowarder _databaseForwarder;

  final CallbackDelegate _callbacks = {};

  SendPort uiThreadPort;

  void handleMessage(dynamic message) async {
    ServiceMessageData serviceMessage = message as ServiceMessageData;
    ServiceResponse? response;

    try {
      response = await _callbacks[message.event]?.call(serviceMessage);

      response ??= response = ServiceResponse(
          hasData: false,
          messageId: serviceMessage.messageId,
          status: OperationStatus.failure);
    } on Exception catch (_, e) {
      response = ServiceResponse(
          hasData: false,
          messageId: serviceMessage.messageId,
          status: OperationStatus.error);
      log(e.toString());
    }

    uiThreadPort.send(response);
  }

  void sendResponse(ServiceResponse response) {
    uiThreadPort.send(response);
  }

  void _registerDatabaseCallbacks() {
    _callbacks[DatabaseEvent.connect] = _databaseForwarder.connect;
    _callbacks[DatabaseEvent.disconnect] = _databaseForwarder.disconnect;

    _callbacks[DatabaseEvent.insertProduct] = _databaseForwarder.addProduct;
    _callbacks[DatabaseEvent.loadProducts] = _databaseForwarder.loadProducts;
    _callbacks[DatabaseEvent.searchProduct] = _databaseForwarder.searchProduct;
    _callbacks[DatabaseEvent.deleteProduct] = _databaseForwarder.deleteProduct;
    _callbacks[DatabaseEvent.updateProduct] = _databaseForwarder.updateProduct;
    _callbacks[DatabaseEvent.updateProductBatch] =
        _databaseForwarder.updateProductBatch;

    _callbacks[DatabaseEvent.insertProductFamily] =
        _databaseForwarder.addProductFamily;
    _callbacks[DatabaseEvent.loadProductFamillies] =
        _databaseForwarder.loadProductFamilies;
    _callbacks[DatabaseEvent.searchProductFamily] =
        _databaseForwarder.searchProductFamily;
    _callbacks[DatabaseEvent.updateProductFamily] =
        _databaseForwarder.updateProductFamily;
    _callbacks[DatabaseEvent.deleteProductFamily] =
        _databaseForwarder.deleteProductFamily;

    _callbacks[DatabaseEvent.insertRemainingRecord] =
        _databaseForwarder.addRemainingRecord;

    _callbacks[DatabaseEvent.insertPurchaseRecord] =
        _databaseForwarder.addPurchaseRecord;
    _callbacks[DatabaseEvent.loadPurchaseRecords] =
        _databaseForwarder.loadPurchaseRecords;
    _callbacks[DatabaseEvent.loadDayPurchaseRecords] =
        _databaseForwarder.loadPurchaseRecords;
    _callbacks[DatabaseEvent.searchPurchaseRecord] =
        _databaseForwarder.searchPurchaseRecord;
    _callbacks[DatabaseEvent.updatePurchaseRecord] =
        _databaseForwarder.updatePurchaseRecord;
    _callbacks[DatabaseEvent.deletePurchaseRecord] =
        _databaseForwarder.deletePurchaseRecord;

    _callbacks[DatabaseEvent.deletePurchaseRecordProduct] =
        _databaseForwarder.deletePurchaseRecordProduct;

    _callbacks[DatabaseEvent.insertSeller] = _databaseForwarder.addSeller;
    _callbacks[DatabaseEvent.loadSellers] = _databaseForwarder.loadSellers;
    _callbacks[DatabaseEvent.updateSeller] = _databaseForwarder.updateSeller;
    _callbacks[DatabaseEvent.deleteSeller] = _databaseForwarder.deleteSeller;

    _callbacks[DatabaseEvent.insertOrder] = _databaseForwarder.addOrder;
    _callbacks[DatabaseEvent.loadOrders] = _databaseForwarder.loadOrders;
    _callbacks[DatabaseEvent.updateOrder] = _databaseForwarder.updateOrder;
    _callbacks[DatabaseEvent.searchOrders] = _databaseForwarder.searchOrders;
    _callbacks[DatabaseEvent.deleteOrder] = _databaseForwarder.deleteOrder;

    _callbacks[DatabaseEvent.insertOrderProduct] =
        _databaseForwarder.insertOrderProduct;
    _callbacks[DatabaseEvent.deleteOrderProduct] =
        _databaseForwarder.deleteOrderProduct;

    _callbacks[DatabaseEvent.updatePurchaseStatistiques] =
        _databaseForwarder.updatePurchaseStatistiques;
    _callbacks[DatabaseEvent.updateOrdersStatistiques] =
        _databaseForwarder.updateOrderStatistiques;
    _callbacks[DatabaseEvent.searchPurchaseStatistiques] =
        _databaseForwarder.searchPurchaseStatistiques;
  }
}
