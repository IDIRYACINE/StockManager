import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class DepositEditorMode<T> {
  final TextEditingController nameController = TextEditingController(text: '');

  final TextEditingController referenceController =
      TextEditingController(text: '');

  final TextEditingController familyController =
      TextEditingController(text: '');

  final TextEditingController minSellingPriceController =
      TextEditingController(text: '');

  final TextEditingController sellingPriceController =
      TextEditingController(text: '');

  final TextEditingController depositController =
      TextEditingController(text: '');

  final TextEditingController remainingPaymenentController =
      TextEditingController(text: '');

  void setRemainingPayement(String? remainingPayement);

  void setSellingPrice(String? sellingPrice);

  void setSellerName(Seller seller);

  void setDeposit(String? deposit);

  void setCustomerName(String? customerName);

  void setColor(String color, String colorId);

  void setSize(String size, String sizeId);

  void confirm(T callback);

  static DepositEditorMode<Callback<Record>> createModeInstance(Record record) {
    return _ModeCreate(record);
  }

  static DepositEditorMode<EditorCallback<AppJson, Record>> editModeInstance(
      Record record) {
    return _ModeEdit(record);
  }
}

class _ModeCreate extends DepositEditorMode<Callback<Record>> {
  _ModeCreate(this.record);

  final Record record;

  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      record.remainingPayement = double.tryParse(remainingPayement) ?? 0;
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null && sellingPrice != '') {
      record.sellingPrice = double.parse(sellingPrice);
      record.remainingPayement = record.sellingPrice - record.deposit;
      remainingPaymenentController.text =
          record.remainingPayement.toString();
    }
  }

  @override
  void setSellerName(Seller seller) {
    record.sellerName = seller.name;
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != "") {
      record.deposit = double.parse(deposit);
      record.remainingPayement = record.sellingPrice - record.deposit;
      remainingPaymenentController.text =
          record.remainingPayement.toString();
    }
  }

  @override
  void setCustomerName(String? customerName) {
    if (customerName != null) {
      record.customer = customerName;
    }
  }

  @override
  void setColor(String color, String colorId) {
    record.productColor = color;
    record.colorId = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    record.productSize = size;
    record.sizeId = sizeId;
  }

  @override
  void confirm(Callback<Record> callback) {
    callback(record);
  }
}

class _ModeEdit extends DepositEditorMode<EditorCallback<AppJson, Record>> {
  _ModeEdit(this.record);

  final Record record;

  final AppJson<dynamic> updatedValues = {};

  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      record.remainingPayement = double.tryParse(remainingPayement) ?? 0;
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null && sellingPrice != '') {
      record.sellingPrice = double.parse(sellingPrice);
    }
  }

  @override
  void setSellerName(Seller seller) {
    record.sellerName = seller.name;
    updatedValues[RecordFields.seller.name] = seller.name;
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != '') {
      double parsedDeposit = double.parse(deposit);
      record.deposit = parsedDeposit;

      double remainingPayement = record.sellingPrice - parsedDeposit;

      remainingPaymenentController.text = remainingPayement.toString();

      updatedValues[RecordFields.deposit.name] = parsedDeposit;
      updatedValues[RecordFields.remainingPayement.name] = remainingPayement;
    }
  }

  @override
  void setCustomerName(String? customerName) {
    if (customerName != null && customerName != '') {
      record.customer = customerName;
      updatedValues[RecordFields.customer.name] = customerName;
    }
  }

  @override
  void setColor(String color, String colorId) {
    record.productColor = color;
    record.colorId = colorId;
    updatedValues[RecordFields.productColor.name] = color;
    updatedValues[RecordFields.productColorId.name] = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    record.productSize = size;
    record.sizeId = sizeId;
    updatedValues[RecordFields.productSize.name] = size;
    updatedValues[RecordFields.productSizeId.name] = sizeId;
  }

  @override
  void confirm(EditorCallback<AppJson, Record> callback) {
    ModifierBuilder query = ModifierBuilder();

    updatedValues.forEach((key, value) {
      query.set(key, value);
    });

    callback(query.map, record);
  }
}
