
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class DepositEditorMode<T> {

  void setRemainingPayement(String? remainingPayement) ;

  void setSellingPrice(String? sellingPrice);

  void setSellerName(Seller seller) ;

  void setDeposit(String? deposit);

  void setCustomerName(String? customerName) ;

  void setColor(String color);

  void setSize(String size) ;

  void confirm(T callback);

  static DepositEditorMode<Callback<Record>> createModeInstance(Record record){
    return _ModeCreate(record);
  }

  static DepositEditorMode<EditorCallback<AppJson,Record>> editModeInstance(Record record){
    return _ModeEdit(record);
  }
}

class _ModeCreate implements DepositEditorMode<Callback<Record>>{

  _ModeCreate(this.record);

  final Record record;
  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      record.remainingPayement = double.tryParse(remainingPayement);
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      record.sellingPrice = double.parse(sellingPrice);
    }
  }

  @override
  void setSellerName(Seller seller) {
    record.sellerName = seller.name;
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null) {
      record.deposit = double.parse(deposit);
    }
  }

  @override
  void setCustomerName(String? customerName) {
    if (customerName != null) {
      record.customer = customerName;
    }
  }

  @override
  void setColor(String color) {
    record.productColor = color;
  }

  @override
  void setSize(String size) {
    record.productSize = size;
  }
  
  @override
  void confirm(Callback<Record> callback) {
    callback(record);
  }
  
  

}

class _ModeEdit implements DepositEditorMode<EditorCallback<AppJson,Record>>{

  _ModeEdit(this.record);

  final Record record;

  final Map<RecordFields,Record> updatedValues = {};

  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      record.remainingPayement = double.tryParse(remainingPayement);
      updatedValues[RecordFields.remainingPayement] = record;
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      record.sellingPrice = double.parse(sellingPrice);
      updatedValues[RecordFields.sellingPrice] = record;
    }
  }

  @override
  void setSellerName(Seller seller) {
    record.sellerName = seller.name;
    updatedValues[RecordFields.seller] = record;
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null) {
      record.deposit = double.parse(deposit);
      updatedValues[RecordFields.deposit] = record;
    }
  }

  @override
  void setCustomerName(String? customerName) {
    if (customerName != null) {
      record.customer = customerName;
      updatedValues[RecordFields.customer] = record;
    }
  }

  @override
  void setColor(String color) {
    record.productColor = color;
    updatedValues[RecordFields.productColor] = record;
  }

  @override
  void setSize(String size) {
    record.productSize = size;
    updatedValues[RecordFields.productSize] = record;
  }
  
  @override
  void confirm(EditorCallback<AppJson, Record> callback) {
    ModifierBuilder query = ModifierBuilder();

    updatedValues.forEach((key,value){
      query.set(key.name, value);
    });

    callback(query.map,record);
    
  }
}
