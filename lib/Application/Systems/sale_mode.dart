import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class SaleEditorMode<T> {
  void setSeller(Seller seller);

  void setSellingPrice(String? price);

  void setCustomer(String? customer);

  void setColor(String color, String colorId);

  void setSize(String size, String sizeId);

  void confirm(T callback);

  static SaleEditorMode<Callback<Record>> createModeInstance(Record record) {
    return _ModeCreate(record);
  }

  static SaleEditorMode<EditorCallback<AppJson, Record>> editModeInstance(
      Record record) {
    return _ModeEdit(record);
  }
}

class _ModeCreate extends SaleEditorMode<Callback<Record>> {
  final Record record;

  _ModeCreate(this.record);

  @override
  void setSeller(Seller seller) {
    record.sellerName = seller.name;
  }

  @override
  void setSellingPrice(String? price) {
    if (price != null) {
      double parsedPrice = double.parse(price);
      record.sellingPrice = parsedPrice;
      record.deposit = parsedPrice;
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

class _ModeEdit extends SaleEditorMode<EditorCallback<AppJson, Record>> {
  final Record record;

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
      record.sellingPrice = parsedPrice;
      record.deposit = parsedPrice;
      updatedFields[RecordFields.sellingPrice] = parsedPrice;
            updatedFields[RecordFields.deposit] = parsedPrice;

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
    record.productColor = color;
    record.colorId = colorId;
    updatedFields[RecordFields.productColor] = color;
    updatedFields[RecordFields.productColorId] = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    record.productSize = size;
    record.sizeId = sizeId;
    updatedFields[RecordFields.productSize] = size;
    updatedFields[RecordFields.productSizeId] = sizeId;
  }

  @override
  void confirm(EditorCallback<AppJson, Record> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, record);
  }
}
