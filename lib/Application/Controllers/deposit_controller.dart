import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DespositController {
  DespositController(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  void add(BuildContext context) {
   

    void onSearch(String searchValue, OnEditorSearchResulCallback callback) {
      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector:
            SelectorBuilder().eq(ProductFields.reference.name, searchValue).map
      };

      ServiceMessage message = ServiceMessage<List<Product>>(
          callback: callback,
          hasCallback: true,
          data: data,
          event: DatabaseEvent.searchProduct,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => Material(
                child: DepositEditor(
              record: Record.defaultInstance(
                payementType: PaymentTypes.deposit.name,
              ),
              onSearch: onSearch,
              createCallback: _onAdd,
              confirmLabel: Labels.add,
            )));
  }

   void _onAdd(Record record) {
      recordsLiveModel.addDepositRecord(record);

    stockLiveModel.reclaimStock(record.reference,
        record.colorId, record.sizeId, 1);
        
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertPurchaseRecord,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
    }

  void edit(BuildContext context, Record record, int index) {
    void onEdit(Map<String, dynamic> updatedField, Record record) {
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
        ServicesData.databaseSelector: updatedField,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.updatePurchaseRecord,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
      recordsLiveModel.updateDepositRecord(record);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: DepositEditor(
              record: record.copyWith(),
              editMode: true,
              editCallback: onEdit,
              confirmLabel: Labels.update,
            )));
  }

  void remove(BuildContext context, Record record) {
    void onRemove() {
      recordsLiveModel.removeDepositRecord(record);
      
    stockLiveModel.reclaimStock(record.reference,
        record.colorId, record.sizeId, 1);

      Map<ServicesData, dynamic> data = {ServicesData.instance: record};
      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.deletePurchaseRecord,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: ConfirmDialog(
              onConfirm: onRemove,
              message: Messages.deleteElement,
            )));
  }

  List<String> recordToRowData(Record record) {
    return [
      record.date.toString(),
      record.product,
      record.sellerName,
      record.deposit.toString(),
      record.remainingPayement.toString(),
      record.sellingPrice.toString(),
    ];
  }

  DropdownMenuItem<PaymentTypes> paymentTypesDropdownAdapter(
      PaymentTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }
}
