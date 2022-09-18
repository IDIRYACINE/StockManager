import 'package:flutter/material.dart';

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
  Future<void> addDeposit(Object? data);
  Future<void> updateDeposit(Object? data);
  Future<void> removeDeposit(Object? data);

  Future<void> addDepositProduct(Object? data);
  Future<void> updateDepositProduct(Object? data);
  Future<void> removeDepositProduct(Object? data);

  Future<void> quickSearchDeposit(Object? data);

  Future<void> clearDeposit(Object? data);
}

abstract class PurchaseStoreDelegate {
  Future<void> addPurchase(Object? data);
  Future<void> updatePurchase(Object? data);
  Future<void> removePurchase(Object? data);

  Future<void> addPurchaseProduct(Object? data);
  Future<void> updatePurchaseProduct(Object? data);
  Future<void> removePurchaseProduct(Object? data);

  Future<void> clearPurchase(Object? data);

}

abstract class OrderStoreDelegate {
  Future<void> addOrder(Object? data);
  Future<void> updateOrder(Object? data);
  Future<void> removeOrder(Object? data);

  Future<void> addOrderProduct(Object? data);
  Future<void> updateOrderProduct(Object? data);
  Future<void> removeOrderProduct(Object? data);

  Future<void> searchOrders(Object? data);
}

abstract class ProductStoreDelegate{
  Future<void> addProduct(Object? data);
  Future<void> updateProduct(Object? data);
  Future<void> removeProduct(Object? data);

  Future<void> searchProducts(Object? data);

}

abstract class CategoryStoreDelegate{
  Future<void> addCategory(Object? data);
  Future<void> updateCategory(Object? data);
  Future<void> removeCategory(Object? data);

  Future<void> searchCategories(Object? data);
}

abstract class RecordsStoreDelegate{
 

  Future<void> searchRecords(Object? data);
}
