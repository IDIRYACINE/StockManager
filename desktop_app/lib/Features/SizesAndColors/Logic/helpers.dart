import 'dart:async';

import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

const _requesterId = 'SizesAndColorsBloc';

Future<void> addModelSize(ModelSize size) async {
  final eventData =
      RegisterSizeEventData(size: size, requesterId: _requesterId);

  final event = RegisterSizeEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> deleteModelSize(ModelSize size) async {
  final eventData =
      DeleteSizeEventData(sizeId: size.sizeId, requesterId: _requesterId);

  final event = DeleteSizeEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> updateModelSize(UpdateRequestWrapper<ModelSize> size) async {
  final eventData = UpdateSizeEventData(size: size, requesterId: _requesterId);

  final event = UpdateSizeEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<List<ModelSize>> loadAllSizes() async {
  final future = Completer<List<ModelSize>>();

  void handleResponse(ServiceEventResponse rawResponse) {
    future.complete((rawResponse as LoadAllSizesResponse).sizes);
  }

  final eventData = LoadAllSizesEventData(requesterId: _requesterId);

  final event =
      LoadAllSizesEvent(eventData: eventData, callback: handleResponse);

  ServicesGateway.instance().sendEvent(event);

  return future.future;
}

Future<void> addModelColor(ModelColor color) async {
  final eventData =
      RegisterColorEventData(color: color, requesterId: _requesterId);

  final event = RegisterColorEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> deleteModelColor(ModelColor color) async {
  final eventData =
      DeleteColorEventData(colorId: color.colorId, requesterId: _requesterId);

  final event = DeleteColorEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> updateModelColor(UpdateRequestWrapper<ModelColor> color) async {
  final eventData =
      UpdateColorEventData(color: color, requesterId: _requesterId);

  final event = UpdateColorEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<List<ModelColor>> loadAllColors() async {
  final future = Completer<List<ModelColor>>();

  void handleResponse(ServiceEventResponse rawResponse) {
    future.complete((rawResponse as LoadAllColorsResponse).colors);
  }

  final eventData = LoadAllColorsEventData(requesterId: _requesterId);

  final event =
      LoadAllColorsEvent(eventData: eventData, callback: handleResponse);

  ServicesGateway.instance().sendEvent(event);

  return future.future;
}