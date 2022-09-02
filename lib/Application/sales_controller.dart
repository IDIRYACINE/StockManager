import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SalesController {

  late RecordsLiveDataModel recordsLiveData;

  Callback<bool>? _toggleLastSelectedRow;
  int _lastRowIndex = -1;

  int totalPrice = 0;

  init(BuildContext context){
    recordsLiveData = Provider.of<RecordsLiveDataModel>(context, listen: false);
  }

  void edit(BuildContext context) {
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
      Provider.of<RecordsLiveDataModel>(context, listen: false)
          .updateDepositRecord(record);
    }
    showDialog(
        context: context,
        builder: (context) => Material(
                child: SaleEditor(
              record: recordsLiveData.selectedPurchaseRecord,
              editMode: true,
              confirmLabel: Labels.update,
              editCallback: onEdit,
            )));
  }

  void add(BuildContext context) {

    void _onConfirm(Record record) {
      Provider.of<RecordsLiveDataModel>(context, listen: false)
          .addDepositRecord(record);

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertPurchaseRecord,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
    }


    void onSearch(String barcode,OnEditorSearchResulCallback callback){
      //TODO
      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector : SelectorBuilder().eq(ProductFields.barcode.name, barcode).map};

      ServiceMessage message = ServiceMessage<List<Product>>(
          callback: callback,
          hasCallback: true,
          data: data,
          event: DatabaseEvent.searchProduct,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);

    }

    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();

    showDialog(
        context: context,
        builder: (context) => Material(
                child: SaleEditor(
              record: Record(payementType: PaymentTypes.payement.name,
              timestamp: timestamp
              ),
              confirmLabel: Labels.add,
              createCallback: _onConfirm,
            )));
  }

  void clear(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content:
                ConfirmDialog(onConfirm: () {
                  recordsLiveData.clearSaleRecord();
                }, message: Messages.clearAll)));
  }

  void remove(BuildContext context) {
    void onRemove() {
      RecordsLiveDataModel liveDataModel =
          Provider.of<RecordsLiveDataModel>(context, listen: false);
      Record deletedRecord = liveDataModel.selectedDepositRecord;
      liveDataModel.removeDepositRecord();

      Map<ServicesData, dynamic> data = {ServicesData.instance: deletedRecord};
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
                onConfirm: onRemove, message: Messages.deleteElement)));
  }

  void registerLastSelectedRow(Callback<bool> toggleRow , int rowIndex,VoidCallback updateRow) {

    if(_lastRowIndex != rowIndex && _toggleLastSelectedRow != null) {
      _toggleLastSelectedRow!(false);
    }
    
    _lastRowIndex = rowIndex;
    _toggleLastSelectedRow = toggleRow;

        toggleRow(true);

  }
  
}
