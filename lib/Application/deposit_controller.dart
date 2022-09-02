import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DespositController {
  Callback<bool>? _turnOffLastSelectedRow;
  int _lastRowIndex = -1;

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

    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: DepositEditor(
              record: Record(
                  payementType: PaymentTypes.deposit.name,
                  timestamp: timestamp),
              createCallback: _onConfirm,
              confirmLabel: Labels.add,
            )));
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
        builder: (context) => AlertDialog(
                content: DepositEditor(
              record: Provider.of<RecordsLiveDataModel>(context, listen: false)
                  .selectedDepositRecord,
              editMode: true,
              editCallback: onEdit,
              confirmLabel: Labels.update,
            )));
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
              onConfirm: onRemove,
              message: Messages.deleteElement,
            )));
  }

  List<String> recordToRowData(Record record) {
    return [
      record.date,
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

  void registerLastSelectedRow(
      Callback<bool> turnOffRow, int rowIndex, VoidCallback updateRow) {
    if (_lastRowIndex != rowIndex && _turnOffLastSelectedRow != null) {
      _turnOffLastSelectedRow!(false);
    }

    _lastRowIndex = rowIndex;
    _turnOffLastSelectedRow = turnOffRow;

    turnOffRow(true);
  }

  void deregisterLastSelectedRow(RecordsLiveDataModel liveDataModel) {
    _lastRowIndex = -1;
    _turnOffLastSelectedRow = null;
    liveDataModel
        .updateSelectedRow = null;
  }
}
