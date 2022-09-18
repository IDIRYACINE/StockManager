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
  EventResponse addDeposit(Object? data);
  EventResponse updateDeposit(Object? data);
  EventResponse removeDeposit(Object? data);

  EventResponse addDepositProduct(Object? data);
  EventResponse updateDepositProduct(Object? data);
  EventResponse removeDepositProduct(Object? data);

  EventResponse quickSearchDeposit(Object? data);

  EventResponse clearDeposit(Object? data);
}

abstract class PurchaseStoreDelegate {
  EventResponse addPurchase(Object? data);
  EventResponse updatePurchase(Object? data);
  EventResponse removePurchase(Object? data);

  EventResponse addPurchaseProduct(Object? data);
  EventResponse updatePurchaseProduct(Object? data);
  EventResponse removePurchaseProduct(Object? data);

  EventResponse clearPurchase(Object? data);

}

abstract class OrderStoreDelegate {
  EventResponse addOrder(Object? data);
  EventResponse updateOrder(Object? data);
  EventResponse removeOrder(Object? data);

  EventResponse addOrderProduct(Object? data);
  EventResponse updateOrderProduct(Object? data);
  EventResponse removeOrderProduct(Object? data);

  EventResponse searchOrders(Object? data);
}
