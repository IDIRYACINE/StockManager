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

  init(BuildContext context) {
    recordsLiveData = Provider.of<RecordsLiveDataModel>(context, listen: false);
  }

  void edit(BuildContext context,Record record,int index) {
    
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
          .updateSaleRecordAt(record,index);
    }

    showDialog(
        context: context,
        builder: (context) => Material(
                child: SaleEditor(
              record: record.copyWith(),
              editMode: true,
              confirmLabel: Labels.update,
              editCallback: onEdit,
            )));
  }

  void add(BuildContext context) {
    void _onConfirm(Record record) {
      Provider.of<RecordsLiveDataModel>(context, listen: false)
          .addSaleRecord(record);

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertPurchaseRecord,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
    }

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

    int timeStamp = DateTime.now().millisecondsSinceEpoch;

    showDialog(
        context: context,
        builder: (context) => Material(
                child: SaleEditor(
              record: Record.defaultInstance(
                  payementType: PaymentTypes.payement.name,
                  timeStamp: timeStamp),
              onSearch: onSearch,
              confirmLabel: Labels.add,
              createCallback: _onConfirm,
            )));
  }

  void clear(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: ConfirmDialog(
                onConfirm: () {
                  recordsLiveData.clearSaleRecord();
                },
                message: Messages.clearAll)));
  }

  void remove(BuildContext context,Record record) {
    void onRemove() {
      RecordsLiveDataModel liveDataModel =
          Provider.of<RecordsLiveDataModel>(context, listen: false);
      liveDataModel.removeSaleRecord(record);

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
                onConfirm: onRemove, message: Messages.deleteElement)));
  }

}
