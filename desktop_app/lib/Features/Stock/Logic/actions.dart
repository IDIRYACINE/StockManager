import 'dart:async';

import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

const _requesterId = 'StockBloc';

Future<void> addProduct(Product product) async {
  final eventData =
      RegisterProductEventData(product: product, requesterId: _requesterId);

  final event = RegisterProductEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> removeProduct(Product product) async {
  final eventData =
      DeleteProductEventData(product: product, requesterId: _requesterId);

  final event = DeleteProductEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<List<Product>> loadProducts() async {
  final completer = Completer<List<Product>>();

  void onResponse(ServiceEventResponse response) {
    completer.complete((response as LoadProductsResponse).products);
  }

  final eventData = LoadProductsEventData(requesterId: _requesterId);

  final event = LoadProductsEvent(eventData: eventData, callback: onResponse);

  ServicesGateway.instance().sendEvent(event);

  return completer.future;
}

Future<List<Product>> searchProducts(AppJson query) async {
  final completer = Completer<List<Product>>();

  void onResponse(ServiceEventResponse response) {
    completer.complete((response as SearchProductResponse).products);
  }

  final eventData =
      SearchProductEventData(searchParams: query, requesterId: _requesterId);

  final event = SearchProductEvent(eventData: eventData, callback: onResponse);

  ServicesGateway.instance().sendEvent(event);

  return completer.future;
}

Future<void> updateProduct(UpdateRequestWrapper<Product> wrapper) async {
  final eventData =
      UpdateProductEventData(product: wrapper, requesterId: _requesterId);

  final event = UpdateProductEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> addProductFamily(ProductFamily family) async {
  final eventData =
      RegisterProductFamilyEventData(family: family, requesterId: _requesterId);

  final event = RegisterProductEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> removeProductFamily(ProductFamily family) async {
  final eventData =
      DeleteProductFamilyEventData(family: family, requesterId: _requesterId);

  final event = DeleteProductFamilyEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<void> updateProductFamily(
    UpdateRequestWrapper<ProductFamily> wrapper) async {

  final eventData =
      UpdateProductFamilyEventData(family: wrapper, requesterId: _requesterId);

  final event = UpdateProductFamilyEvent(eventData: eventData);

  ServicesGateway.instance().sendEvent(event);
}

Future<List<ProductFamily>> loadProductFamillies() async {
  final completer = Completer<List<ProductFamily>>();

  void onResponse(ServiceEventResponse response) {
    completer.complete((response as LoadProductFamilliesResponse).famillies);
  }

  final eventData = LoadProductFamilliesEventData(requesterId: _requesterId);

  final event =
      LoadProductFamilliesEvent(eventData: eventData, callback: onResponse);

  ServicesGateway.instance().sendEvent(event);

  return completer.future;
}

Future<List<ProductFamily>> searchProductFamilies(AppJson query) async {
  final completer = Completer<List<ProductFamily>>();

  void onResponse(ServiceEventResponse response) {
    completer.complete((response as SearchProductFamilliesResponse).famillies);
  }

  final familyId = query[r'$query'][ProductFamilyFields.reference];

  final eventData = SearchProductFamilliesEventData(
      familyId: familyId, requesterId: _requesterId);

  final event =
      SearchProductFamilliesEvent(eventData: eventData, callback: onResponse);

  ServicesGateway.instance().sendEvent(event);

  return completer.future;
}

Future<Product?> quickSearchProduct(String barcode) async {
  final completer = Completer<Product?>();

  void onResponse(ServiceEventResponse response) {
    completer.complete((response as QuickSearchProductResponse).product);
  }

  final eventData =
      QuickSearchProductEventData(searchValue: barcode, requesterId: _requesterId);

  final event =
      QuickSearchProductEvent(eventData: eventData, callback: onResponse);

  ServicesGateway.instance().sendEvent(event);

  return completer.future;
}