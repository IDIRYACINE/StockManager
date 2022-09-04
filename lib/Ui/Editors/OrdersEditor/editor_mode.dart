
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class OrderProductEditorMode<T>  {

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

  void setColor(String color);

  void setSize(String size);

  void confirm(T callback);

  static OrderProductEditorMode<Callback<OrderProduct>> createModeInstance(OrderProduct orderProduct,Order order) {
    return _ModeCreate(orderProduct,order);
  }

  static OrderProductEditorMode<EditorCallback<AppJson, OrderProduct>> editModeInstance(
      OrderProduct orderProduct,Order order) {
    return _ModeEdit(orderProduct,order);
  }
}

class _ModeCreate extends OrderProductEditorMode<Callback<OrderProduct>> {
  final OrderProduct orderProduct;
  final Order order;

  _ModeCreate(this.orderProduct, this.order);

  @override
  void setSellingPrice(String? price){
    if(price != null && price !='') {
      orderProduct.sellingPrice = double.parse(price);
      sellingPriceController.text = price;
    }
  }


  @override
  void setColor(String color){
    orderProduct.productColor = color;
  }

  @override
  void setSize(String size){
    orderProduct.productSize = size;
  }

  @override
  void confirm(Callback<OrderProduct> callback) {
    callback(orderProduct);
  }
}

class _ModeEdit extends OrderProductEditorMode<EditorCallback<AppJson, OrderProduct>> {
  final OrderProduct orderProduct;
  final Order order;

  _ModeEdit(this.orderProduct, this.order);

  Map<OrderFields, dynamic> updatedFields = {};


  @override
  void setSellingPrice(String? price){
    if(price != null && price !='') {
      double sellingPrice = double.parse(price);
      orderProduct.sellingPrice = sellingPrice;
      updatedFields[OrderFields.sellingPrice] = sellingPrice;
    }
  }

  @override
  void setColor(String color){
    orderProduct.productColor = color;
    updatedFields[OrderFields.productColor] = color;
  }

  @override
  void setSize(String size){
    orderProduct.productSize = size;
    updatedFields[OrderFields.productSize] = size;
  }

  @override
  void confirm(EditorCallback<AppJson, OrderProduct> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, orderProduct);
  }
}




abstract class OrderFormEditorMode<T>  {

  void setSeller(Seller seller);

  void setClient(String? client);

  void setDeposit(String? deposit);


  void setDeliveryCost(String? deliveryCost) ;

  void setPhoneNumber(String? phoneNumber);

  void setState(String? state);

  void setAddress(String? address);

  void confirm(T callback);


  static OrderFormEditorMode<Callback<Order>> editModeInstance(
      Order order,AppJson updatedValuesCache) {
    return _ModeCustomerForm(order,updatedValuesCache);
  }

}

class _ModeCustomerForm extends OrderFormEditorMode<Callback<Order>> {

  _ModeCustomerForm(this.order, this.updatedValuesCache);

    final Order order;
    final AppJson updatedValuesCache;


  @override
  void setSeller(Seller seller){
    order.sellerName = seller.name;
  }

  @override
  void setClient(String? client){
    if(client != null && client !='') {
      order.customerName = client;
      updatedValuesCache[OrderFields.customerName.name] = client;
    }
  }

  @override
  void setDeposit(String? deposit){
    if(deposit != null && deposit !='') {
      order.deposit = double.parse(deposit);
      updatedValuesCache[OrderFields.deposit.name] = double.parse(deposit);
    }
  }

  @override
  void setState(String? state){
    if(state != null && state !='') {
      order.city = state;
      updatedValuesCache[OrderFields.city.name] = state;
    }
  }

  @override
  void setAddress(String? address ){
    if(address != null && address !='') {
      order.address = address;
      updatedValuesCache[OrderFields.address.name] = address;
    }
  }


  @override
  void setPhoneNumber(String? phoneNumber) {
    if(phoneNumber != null && phoneNumber !='') {
      int phone = int.parse(phoneNumber);
      order.phoneNumber = phone;
      updatedValuesCache[OrderFields.phone.name] = phone;
    }
  }


  @override
  void setDeliveryCost(String? deliveryCost) {
    if(deliveryCost != null && deliveryCost !='') {
      order.deliveryCost = double.parse(deliveryCost);
      updatedValuesCache[OrderFields.deliveryCost.name] = double.parse(deliveryCost);
    }
  }

  @override
  void confirm(Callback<Order> callback) {
    callback(order);
  }
  
  
}

