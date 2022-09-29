import 'package:flutter/material.dart';
import 'package:stock_manager/Types/i_stores.dart';

class ProductFormEditor {
  final TextEditingController productNameController =
      TextEditingController(text: '');

  final TextEditingController referenceController =
      TextEditingController(text: '');

  final TextEditingController familyController =
      TextEditingController(text: '');

  final TextEditingController minSellingPriceController =
      TextEditingController(text: '');

  final TextEditingController sellingPriceController =
      TextEditingController(text: '');

  final TextEditingController remainingQuantity =
      TextEditingController(text: '');
}


abstract class DepositStoreDelegate {
  Future<EventResponse?> addDeposit(StoreEvent event);
  Future<EventResponse?> updateDeposit(StoreEvent event);
  Future<EventResponse?> removeDeposit(StoreEvent event);

  Future<EventResponse?> addDepositProduct(StoreEvent event);
  Future<EventResponse?> updateDepositProduct(StoreEvent event);
  Future<EventResponse?> removeDepositProduct(StoreEvent event);

  Future<EventResponse?> quickSearchDeposit(StoreEvent event);

  Future<EventResponse?> clearDeposit(StoreEvent event);
}

abstract class PurchaseStoreDelegate {
  Future<EventResponse?> addPurchase(StoreEvent event);
  Future<EventResponse?> updatePurchase(StoreEvent event);
  Future<EventResponse?> removePurchase(StoreEvent event);

  Future<EventResponse?> addPurchaseProduct(StoreEvent event);
  Future<EventResponse?> updatePurchaseProduct(StoreEvent event);
  Future<EventResponse?> removePurchaseProduct(StoreEvent event);

  Future<EventResponse?> clearPurchase(StoreEvent event);

}

abstract class OrderStoreDelegate {
  Future<EventResponse?> addOrder(StoreEvent event);
  Future<EventResponse?> updateOrder(StoreEvent event);
  Future<EventResponse?> removeOrder(StoreEvent event);

  Future<EventResponse?> addOrderProduct(StoreEvent event);
  Future<EventResponse?> updateOrderProduct(StoreEvent event);
  Future<EventResponse?> removeOrderProduct(StoreEvent event);

  Future<EventResponse?> searchOrders(StoreEvent event);
}

abstract class ProductStoreDelegate{
  Future<EventResponse?> addProduct(StoreEvent event);
  Future<EventResponse?> updateProduct(StoreEvent event);
  Future<EventResponse?> removeProduct(StoreEvent event);

  Future<EventResponse?> searchProducts(StoreEvent event);

}

abstract class CategoryStoreDelegate{
  Future<EventResponse?> addCategory(StoreEvent event);
  Future<EventResponse?> updateCategory(StoreEvent event);
  Future<EventResponse?> removeCategory(StoreEvent event);

  Future<EventResponse?> searchCategories(StoreEvent event);
}

abstract class RecordsStoreDelegate{
  Future<EventResponse?> searchRecords(StoreEvent event);
}

abstract class StatistiquesStoreDelegate{
  Future<EventResponse?> searchStatistiques(StoreEvent event);
  Future<EventResponse?> updatePurchaseStatistiques(EventResponse event);
  Future<EventResponse?> updateOrderStatistiques(EventResponse event);
  Future<EventResponse?> notifyEventResult(String event, EventResponse? response);
}


abstract class StoreAction{
  Future<EventResponse?> execute(StoreEvent event);
  String getName();
  int getId();
}


class EmptyAction implements StoreAction {
  @override
  Future<EventResponse?> execute(StoreEvent event) {
    throw UnimplementedError();
  }

  @override
  int getId() {
    throw UnimplementedError();
  }

  @override
  String getName() {
    throw UnimplementedError();
  }
}
