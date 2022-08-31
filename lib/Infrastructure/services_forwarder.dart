import 'dart:developer';
import 'dart:isolate';

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

  void handleMessage(dynamic message) {
    ServiceMessageData serviceMessage = message as ServiceMessageData;
    ServiceResponse? response;
    log('${serviceMessage.event.name} : ${serviceMessage.data.toString()}');

    try {
      response = _callbacks[message.event]?.call(serviceMessage);

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
  }

  ServiceResponse addProduct(ServiceMessageData serviceMessage) {
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

  ServiceResponse connect(ServiceMessageData serviceMessage) {
    ServiceResponse response;

    _database.connect(serviceMessage.data[ServicesData.identifier],
        serviceMessage.data[ServicesData.password]);

    response = ServiceResponse(
        hasData: false,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId);

    return response;
  }
}
