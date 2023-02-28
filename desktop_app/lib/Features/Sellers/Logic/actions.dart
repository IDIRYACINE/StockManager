

import 'dart:async';

import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';

const requesterId = 'sellersBloc';

Future<List<Seller>> loadSellers() async {
  final future = Completer<List<Seller>>();

  void handleResponse(ServiceEventResponse rawResponse) {
    future.complete((rawResponse as LoadSellersResponse).sellers);
  }

  final data = LoadSellersEventData(requesterId: requesterId);

  final event = LoadSellersEvent(eventData: data, callback: handleResponse );

  ServicesGateway.instance().sendEvent(event);


  return future.future;
}

Future<void> deleteSeller(Seller seller) async {

  final data = DeleteSellerEventData(requesterId: requesterId, seller: seller);

  final event = DeleteSellerEvent(eventData: data );

  ServicesGateway.instance().sendEvent(event);

}

Future<void> addSeller(Seller seller) async {

  final data = RegisterSellerEventData(requesterId: requesterId, seller: seller);

  final event = RegisterSellerEvent(eventData: data );

  ServicesGateway.instance().sendEvent(event);

}

Future<void> updateSeller(Seller seller) async {

  final data = UpdateSellerEventData(requesterId: requesterId, seller: seller);

  final event = UpdateSellerEvent(eventData: data );

  ServicesGateway.instance().sendEvent(event);

}