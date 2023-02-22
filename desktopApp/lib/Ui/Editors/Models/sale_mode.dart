import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class SaleEditorMode<T> {
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

  final TextEditingController remainingQuantity =
      TextEditingController(text: '');

  void setSeller(Seller seller);

  void setSellingPrice(String? price);

  void setCustomer(String? customer);

  void setColor(String color, String colorId);

  void setSize(String size, String sizeId);

  void setDeposit(String? deposit);

  void setRemainingPayement(String? remainingPayement);

  void setAddress(String? value);

  void setCity(String? value);

  void setPhoneNumber(String? value);

  void setRecordProduct(RecordProduct recordProduct);

  RecordProduct getRecordProduct();

  T result();

  static SaleEditorMode<Record> createModeInstance(Record record) {
    return _ModeCreate(record);
  }

  static SaleEditorMode<FormUpdatedWrapper> editModeInstance(
      Record record) {
    return _ModeEdit(record);
  }
}

class _ModeCreate extends SaleEditorMode<Record> {
  final Record record;
  RecordProduct recordProduct = RecordProduct.defaultInstance();

  _ModeCreate(this.record);

  @override
  void setSeller(Seller seller) {
    record.sellerName = seller.name;
  }

  @override
  void setSellingPrice(String? price) {
    if (price != null) {
      double parsedPrice = double.parse(price);
      double priceChange = parsedPrice - recordProduct.sellingPrice;

      recordProduct.sellingPrice = parsedPrice;
      recordProduct.remainingPayement += priceChange;
    }
  }

  @override
  void setCustomer(String? customer) {
    if (customer != null) {
      record.customer = customer;
    }
  }

  @override
  void setColor(String color, String colorId) {
    recordProduct.color = color;
    recordProduct.colorId = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    recordProduct.size = size;
    recordProduct.sizeId = sizeId;
  }

  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      recordProduct.remainingPayement = double.tryParse(remainingPayement) ?? 0;
      remainingPaymenentController.text = remainingPayement;
    }
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != "") {
      double parsedDeposit = double.parse(deposit);
      double depositChange = parsedDeposit - recordProduct.deposit;

      recordProduct.deposit = parsedDeposit;
      recordProduct.remainingPayement -= depositChange;

      remainingPaymenentController.text =
          recordProduct.remainingPayement.toString();
    }
  }

  @override
  void setAddress(String? value) {
    record.address = value;
  }

  @override
  void setPhoneNumber(String? value) {
    if (value != null && value.isNotEmpty) {
      record.phoneNumber = int.tryParse(value);
    }
  }

  @override
  void setCity(String? value) {
    record.city = value;
  }

  @override
  void setRecordProduct(RecordProduct recordProduct) {
    this.recordProduct = recordProduct;
  }

  @override
  RecordProduct getRecordProduct() {
    final result = recordProduct.copyWith(timeStamp: Utility.getTimeStamp().toString());
    recordProduct = recordProduct.copyWith(timeStamp: Utility.getTimeStamp().toString());

    return result;
  }

  @override
  Record result() {
    return record;
  }
}

class _ModeEdit extends SaleEditorMode<FormUpdatedWrapper> {
  final Record record;
  RecordProduct recordProduct = RecordProduct.defaultInstance();

  _ModeEdit(this.record);

  Map<RecordFields, dynamic> updatedFields = {};

  @override
  void setSeller(Seller seller) {
    record.sellerName = seller.name;
    updatedFields[RecordFields.seller] = seller.name;
  }

  @override
  void setSellingPrice(String? price) {
    if (price != null) {
      double parsedPrice = double.parse(price);
      double priceChange = parsedPrice - recordProduct.sellingPrice;

      recordProduct.sellingPrice = parsedPrice;
      record.totalPrice += priceChange;

      updatedFields[RecordFields.totalPrice] = record.totalPrice;
    }
  }

  @override
  void setCustomer(String? customer) {
    if (customer != null) {
      record.customer = customer;
      updatedFields[RecordFields.customer] = customer;
    }
  }

  @override
  void setColor(String color, String colorId) {
    recordProduct.color = color;
    recordProduct.colorId = colorId;
    updatedFields[RecordFields.products] = record.products;
  }

  @override
  void setSize(String size, String sizeId) {
    recordProduct.size = size;
    recordProduct.sizeId = sizeId;
    updatedFields[RecordFields.products] = record.products;
  }

  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      record.remainingPayement = double.tryParse(remainingPayement) ?? 0;
    }
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != '') {
      double parsedDeposit = double.parse(deposit);
      double depositChange = parsedDeposit - recordProduct.deposit;

      recordProduct.deposit = parsedDeposit;
      record.remainingPayement +=
          recordProduct.sellingPrice - recordProduct.deposit;
      record.totalDeposit += depositChange;
      remainingPaymenentController.text = record.remainingPayement.toString();

      updatedFields[RecordFields.totalDeposit] = record.totalDeposit;
      updatedFields[RecordFields.remainingPayement] = record.remainingPayement;
    }
  }

  @override
  void setAddress(String? value) {
    record.address = value;
    updatedFields[RecordFields.address] = value;
  }

  @override
  void setPhoneNumber(String? value) {
    if (value != null && value.isNotEmpty) {
      int parsedPhone = int.parse(value);
      record.phoneNumber = parsedPhone;
      updatedFields[RecordFields.phoneNumber] = parsedPhone;
    }
  }

  @override
  void setCity(String? value) {
    record.city = value;
    updatedFields[RecordFields.city] = value;
  }

  @override
  void setRecordProduct(RecordProduct recordProduct) {
    this.recordProduct = recordProduct;
  }

  @override
  RecordProduct getRecordProduct() {
    final result = recordProduct.copyWith(timeStamp: Utility.getTimeStamp().toString());
    recordProduct = recordProduct.copyWith(timeStamp: Utility.getTimeStamp().toString());
    return result;
  } 

  @override
  FormUpdatedWrapper result() {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    return FormUpdatedWrapper(record,modifierBuilder.map);
  }
}
