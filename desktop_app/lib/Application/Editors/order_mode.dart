import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Domain/Models/order.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class OrderProductEditorMode<T> {
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

  void setSellingPrice(String? price);

  void setColor(String color, String colorId);

  void setSize(String size, String sizeId);

  void setUpdatedValuesMap(AppJson<dynamic> json);

  void setOrderProduct(RecordProduct orderProduct);

  void appendToOrder();

  void confirm(T callback);

  static OrderProductEditorMode<Callback<RecordProduct>> createModeInstance(
    RecordProduct orderProduct,
    Order order,
  ) {
    return _ModeCreate(orderProduct, order);
  }

  static OrderProductEditorMode<EditorCallback<AppJson, RecordProduct>>
      editModeInstance(RecordProduct orderProduct, Order order) {
    return _ModeEdit(orderProduct, order);
  }
}

class _ModeCreate extends OrderProductEditorMode<Callback<RecordProduct>> {
  RecordProduct orderProduct;
  final Order order;

  _ModeCreate(
    this.orderProduct,
    this.order,
  );

  @override
  void setSellingPrice(String? price) {
    if (price != null && price != '') {
      double sellingPrice = double.parse(price);
      orderProduct.sellingPrice = sellingPrice;
    }
  }

  @override
  void setColor(String color, String colorId) {
    orderProduct.color = color;
    orderProduct.colorId = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    orderProduct.size = size;
    orderProduct.sizeId = sizeId;
  }

  @override
  void confirm(Callback<RecordProduct> callback) {
    callback(orderProduct);
  }

  @override
  void setOrderProduct(RecordProduct product) {
    orderProduct = product;
  }

  @override
  void setUpdatedValuesMap(AppJson json) {}

  @override
  void appendToOrder() {
    order.totalPrice += orderProduct.sellingPrice;
    order.remainingPayement += orderProduct.sellingPrice;
    order.products[orderProduct.timeStamp] = orderProduct;
  }
}

class _ModeEdit
    extends OrderProductEditorMode<EditorCallback<AppJson, RecordProduct>> {
  RecordProduct orderProduct;
  final Order order;

  _ModeEdit(this.orderProduct, this.order);

  AppJson<dynamic> updatedFields = {};

  @override
  void setSellingPrice(String? price) {
    if (price != null && price != '') {
      double sellingPrice = double.parse(price);
      double priceChange = sellingPrice - orderProduct.sellingPrice;

      order.totalPrice += priceChange;
      order.remainingPayement += priceChange;
      orderProduct.sellingPrice = sellingPrice;

      updatedFields[OrderFields.remainingPayement.name] =
          order.remainingPayement;
      updatedFields[OrderFields.totalPrice.name] = order.totalPrice;
      updatedFields[OrderFields.sellingPrice.name] = sellingPrice;
    }
  }

  @override
  void setColor(String color, String colorId) {
    orderProduct.color = color;
    orderProduct.colorId = colorId;
    updatedFields[OrderFields.productColor.name] = color;
    updatedFields[OrderFields.productColorId.name] = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    orderProduct.size = size;
    orderProduct.sizeId = sizeId;

    updatedFields[OrderFields.productSize.name] = size;
    updatedFields[OrderFields.productSizeId.name] = sizeId;
  }

  @override
  void setOrderProduct(RecordProduct product) {
    orderProduct = product;
    updatedFields.clear();
  }

  @override
  void confirm(EditorCallback<AppJson, RecordProduct> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key, value);
    });

    callback(modifierBuilder.map, orderProduct);
  }

  @override
  void setUpdatedValuesMap(AppJson json) {
    updatedFields = json;
  }

  @override
  void appendToOrder() {
    order.products[orderProduct.timeStamp] = orderProduct;
  }
}

abstract class OrderFormEditorMode<T> {
  void setSeller(Seller seller);

  void setClient(String? client);

  void setDeposit(String? deposit);

  void setDeliveryCost(String? deliveryCost);

  void setPhoneNumber(String? phoneNumber);

  void setState(String? state);

  void setAddress(String? address);

  void confirm(T callback);

  static OrderFormEditorMode<Callback2<AppJson, Order>> editModeInstance(
      Order order, AppJson updatedValuesCache) {
    return _EditCustomerForm(order, updatedValuesCache);
  }

  static OrderFormEditorMode<Callback<Order>> createModeInstance(Order order) {
    return _CreateCustomerForm(order);
  }
}

class _EditCustomerForm extends OrderFormEditorMode<Callback2<AppJson, Order>> {
  _EditCustomerForm(this.order, this.updatedValuesCache);

  final Order order;
  final AppJson updatedValuesCache;

  @override
  void setSeller(Seller seller) {
    order.sellerName = seller.name;
    updatedValuesCache[OrderFields.seller.name] = seller.name;
  }

  @override
  void setClient(String? client) {
    if (client != null && client != '') {
      order.customerName = client;
      updatedValuesCache[OrderFields.customerName.name] = client;
    }
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != '') {
      double parsedDeposit = double.parse(deposit);
      double priceChange = parsedDeposit - order.deposit;
      order.remainingPayement += priceChange ;

      order.deposit = parsedDeposit;

      updatedValuesCache[OrderFields.deposit.name] = parsedDeposit;
      updatedValuesCache[OrderFields.remainingPayement.name] =
          order.remainingPayement;
    }
  }

  @override
  void setState(String? state) {
    if (state != null && state != '') {
      order.city = state;
      updatedValuesCache[OrderFields.city.name] = state;
    }
  }

  @override
  void setAddress(String? address) {
    if (address != null && address != '') {
      order.address = address;
      updatedValuesCache[OrderFields.address.name] = address;
    }
  }

  @override
  void setPhoneNumber(String? phoneNumber) {
    if (phoneNumber != null && phoneNumber != '') {
      int phone = int.parse(phoneNumber);
      order.phoneNumber = phone;
      updatedValuesCache[OrderFields.phone.name] = phone;
    }
  }

  @override
  void setDeliveryCost(String? deliveryCost) {
    if (deliveryCost != null && deliveryCost != '') {
      double parsedDeliveryCost = double.parse(deliveryCost);

      double priceChange = parsedDeliveryCost - order.deposit;

      order.remainingPayement -= priceChange;

      order.deliveryCost = parsedDeliveryCost;
      updatedValuesCache[OrderFields.deliveryCost.name] = parsedDeliveryCost;
      updatedValuesCache[OrderFields.remainingPayement.name] =
          order.remainingPayement;
    }
  }

  @override
  void confirm(Callback2<AppJson, Order> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedValuesCache.forEach((key, value) {
      modifierBuilder.set(key, value);
    });

    callback(modifierBuilder.map, order);
  }
}

class _CreateCustomerForm extends OrderFormEditorMode<Callback<Order>> {
  _CreateCustomerForm(this.order);

  final Order order;

  @override
  void setSeller(Seller seller) {
    order.sellerName = seller.name;
  }

  @override
  void setClient(String? client) {
    if (client != null && client != '') {
      order.customerName = client;
    }
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != '') {
      double parsedDeposit = double.parse(deposit);
      double priceChange = parsedDeposit - order.deposit;
      
      order.remainingPayement -= priceChange;

      order.deposit = parsedDeposit;
    }
  }

  @override
  void setState(String? state) {
    if (state != null && state != '') {
      order.city = state;
    }
  }

  @override
  void setAddress(String? address) {
    if (address != null && address != '') {
      order.address = address;
    }
  }

  @override
  void setPhoneNumber(String? phoneNumber) {
    if (phoneNumber != null && phoneNumber != '') {
      int phone = int.parse(phoneNumber);
      order.phoneNumber = phone;
    }
  }

  @override
  void setDeliveryCost(String? deliveryCost) {
    if (deliveryCost != null && deliveryCost != '') {
      double parsedDeliveryCost = double.parse(deliveryCost);
      double priceChange = parsedDeliveryCost - order.deliveryCost;

      order.deliveryCost = parsedDeliveryCost;
      order.remainingPayement += priceChange;

    }
  }

  @override
  void confirm(Callback<Order> callback) {
    callback(order);
  }
}
