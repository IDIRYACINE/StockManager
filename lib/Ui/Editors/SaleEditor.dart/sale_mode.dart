import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class SaleEditorMode<T> {
 

  void setSeller(Seller seller);

  void setSellingPrice(String? price);

  void setCustomer(String? customer);

  void setColor(String color);

  void setSize(String size);

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
  void setSeller(Seller seller){
    record.sellerName = seller.name;
  }

  @override
  void setSellingPrice(String? price){
    if(price != null){
      record.sellingPrice = double.parse(price);
    }
  }

  @override
  void setCustomer(String? customer){
    if(customer != null){
      record.customer = customer;
    }
  }

  @override
  void setColor(String color){
    record.productColor = color;
  }

  @override
  void setSize(String size){
    record.productSize = size;
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
  void setSeller(Seller seller){
    record.sellerName = seller.name;
    updatedFields[RecordFields.seller] = seller.name;
  }

  @override
  void setSellingPrice(String? price){
    if(price != null){
      record.sellingPrice = double.parse(price);
      updatedFields[RecordFields.sellingPrice] = double.parse(price);
    }
  }

  @override
  void setCustomer(String? customer){
    if(customer != null){
      record.customer = customer;
      updatedFields[RecordFields.customer] = customer;
    }
  }

  @override
  void setColor(String color){
    record.productColor = color;
    updatedFields[RecordFields.productColor] = color;
  }

  @override
  void setSize(String size){
    record.productSize = size;
    updatedFields[RecordFields.productSize] = size;
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
