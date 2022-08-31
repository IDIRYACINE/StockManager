import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/services_forwarder.dart';
import 'package:stock_manager/Types/special_enums.dart';

class ServicesStore {
  ServicesStore() {
    ReceivePort uiPort = ReceivePort();

    uiPort.listen((message) {
      if (message is SendPort) {
        _backgroundThreadPort = message;

        return;
      }

      _receiveMessage(message);
    });

    Isolate.spawn(registerPort, uiPort.sendPort).then((isolate) {
      _isolateBackground = isolate;
    });
  }

  static ServicesStore? _instance;

  static ServicesStore get instance => _instance!;

  late SendPort _backgroundThreadPort;

  // ignore: unused_field
  late Isolate _isolateBackground;

  final Map<int, ServiceMessage> _messagesQueue = {};

  static ServicesStore getInstance() {
    _instance ??= ServicesStore();
    return _instance!;
  }

  void registerPort(SendPort sendPort) async {
    ReceivePort servicePort = ReceivePort();

    ServicesForwarder eventsForwarder =
        ServicesForwarder(uiThreadPort: sendPort);

    sendPort.send(servicePort.sendPort);

    servicePort.listen((message) {
      eventsForwarder.handleMessage(message);
    });
  }

  void sendMessage(ServiceMessage message) {
    int messageId = _messagesQueue.length;
    ServiceMessageData jsonMessage = message.toJson(messageId);
    _backgroundThreadPort.send(jsonMessage);
    _messagesQueue[messageId] = message;
  }

  void _receiveMessage(ServiceResponse response) {
    ServiceMessage<dynamic> message = _messagesQueue[response.messageId]!;

    if (message.hasCallback) {
      message.callback?.call(response.data);
    }

    if (message.hasVoidCallback) {

      message.voidCallback?.call();
    }


    _messagesQueue.remove(response.messageId);
  }
}

class ServiceMessage<T> {
  ServiceMessage(
      {required this.service,
      required this.event,
      required this.data,
      this.callback,
      this.voidCallback,
      this.hasCallback = false,
      this.hasVoidCallback = false});

  AppServices service;
  Enum event;

  Callback<T>? callback;
  VoidCallback? voidCallback;

  bool hasCallback;
  bool hasVoidCallback;
  Map<ServicesData, dynamic> data;

  ServiceMessageData toJson(int messageId) {
    return ServiceMessageData(service: service, event: event, data: data, messageId: messageId);
  }
}

class ServiceMessageData {
  ServiceMessageData(
      {required this.service,
      required this.event,
      required this.data,
      required this.messageId,
     });
      
  AppServices service;
  Enum event;

  Map<ServicesData, dynamic> data;

  int messageId;
}

class ServiceResponse {
  ServiceResponse(
      {required this.messageId,
      required this.status,
      required this.hasData,
      this.data});

  OperationStatus status;
  bool hasData;
  int messageId;
  dynamic data;

  Map<ServiceResponseFields, dynamic> toJson() {
    Map<ServiceResponseFields, dynamic> json = {};

    json[ServiceResponseFields.status] = status.name;
    json[ServiceResponseFields.data] = data;

    return json;
  }
}
