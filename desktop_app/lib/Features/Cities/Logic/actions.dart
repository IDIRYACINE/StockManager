

import 'dart:async';

import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Infrastructure/RegionService/service.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

const requesterId = 'regionBloc';

Future<List<City>> loadCities() async {
  final future = Completer<List<City>>();

  void handleResponse(ServiceEventResponse rawResponse) {
    future.complete((rawResponse as LoadAllCitiesResponse).cities);
  }

  final data = LoadAllCitiesEventData(requesterId: requesterId);

  final event = LoadAllCitiesEvent(eventData: data, callback: handleResponse );

  ServicesGateway.instance().sendEvent(event);


  return future.future;
}

Future<void> deleteCity(City city) async {

  final data = DeleteCityEventData(requesterId: requesterId, city: city);

  final event = DeleteCityEvent(eventData: data );

  ServicesGateway.instance().sendEvent(event);

}

Future<void> addCity(City city) async {

  final data = RegisterCityEventData(requesterId: requesterId, city: city);

  final event = RegisterCityEvent(eventData: data );

  ServicesGateway.instance().sendEvent(event);

}

Future<void> updateCity(UpdateRequestWrapper<City> city) async {

  final data = UpdateCityEventData(requesterId: requesterId, city: city);

  final event = UpdateCityEvent(eventData: data );

  ServicesGateway.instance().sendEvent(event);

}