
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
    if(price != null){
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
    if(price != null){
      orderProduct.sellingPrice = double.parse(price);
      updatedFields[OrderFields.sellingPrice] = double.parse(price);
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
