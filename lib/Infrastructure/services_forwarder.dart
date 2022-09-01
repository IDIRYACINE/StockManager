import 'dart:developer';
import 'dart:isolate';

import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Infrastructure/Database/repository.dart';
import 'package:stock_manager/Types/i_infrastructre.dart';
import 'package:stock_manager/Types/special_enums.dart';

import 'serivces_store.dart';

class ServicesForwarder {
  ServicesForwarder({required this.uiThreadPort}) {
    _database = Database();
    _repository = DatabaseRepository(_database);
    registerCallbacks();
  }

  late DatabaseRepository _repository;
  late Database _database;

  final CallbackDelegate _callbacks = {};

  SendPort uiThreadPort;

  void handleMessage(dynamic message) async{
    ServiceMessageData serviceMessage = message as ServiceMessageData;
    ServiceResponse? response;
    log('${serviceMessage.event.name} : ${serviceMessage.data.toString()}');

    try {
      response = await _callbacks[message.event]?.call(serviceMessage);

      response ??= response = ServiceResponse(
          hasData: false,
          messageId: serviceMessage.messageId,
          status: OperationStatus.failure);
    } catch (e) {
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

  void registerCallbacks() {
    _callbacks[DatabaseEvent.connect] = connect;
    _callbacks[DatabaseEvent.insertProduct] = addProduct;
    _callbacks[DatabaseEvent.loadProducts] = loadProducts;
    _callbacks[DatabaseEvent.searchProduct] = searchProduct;
    _callbacks[DatabaseEvent.deleteProduct] = deleteProduct;
    _callbacks[DatabaseEvent.updateProduct] = updateProduct;
  }



  Future<ServiceResponse> updateProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    _repository.updateProduct(
       product : serviceMessage.data[ServicesData.instance],
       updatedValues: serviceMessage.data[ServicesData.databaseSelector],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> deleteProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    _repository.deleteProduct(
       product : serviceMessage.data[ServicesData.instance],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> searchProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    List<Product> products = await _repository.searchProduct(
       serviceMessage.data[ServicesData.databaseSelector],
    );

    response = ServiceResponse(
        hasData: true,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        data: products
        );

    return response;
  }

  Future<ServiceResponse> addProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    _repository.insertProduct(
      product : serviceMessage.data[ServicesData.instance],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success);

    return response;
  }

  Future<ServiceResponse> connect(ServiceMessageData serviceMessage) async{

    _database.connect(serviceMessage.data[ServicesData.identifier],
        serviceMessage.data[ServicesData.password]);

    ServiceResponse response = ServiceResponse(
        hasData: false,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId);

    return response;
  }

  Future<ServiceResponse> loadProducts(ServiceMessageData serviceMessage) async{
    List<Product> data = await _repository.loadProducts();

    ServiceResponse response = ServiceResponse(
        hasData: true,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId,
        data: data 
        );

    return response;
  }

}
