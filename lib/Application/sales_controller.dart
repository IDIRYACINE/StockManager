import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
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
    showDialog(
        context: context,
        builder: (context) => Material(
                child: SaleEditor(
              record: recordsLiveData.selectedPurchaseRecord,
              confirmLabel: Labels.update,
              onConfirm: recordsLiveData.updateSaleRecord,
              onSearch: (value){},
            )));
  }

  void add(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Material(
                child: SaleEditor(
              record: Record(payementType: PaymentTypes.payement.name),
              confirmLabel: Labels.add,
              onConfirm: recordsLiveData.addSaleRecord,
              onSearch: (String value) {
                //TODO
              },
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
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: ConfirmDialog(
                onConfirm: () {
                  recordsLiveData.removeSaleRecord();
                
                }, message: Messages.deleteElement)));
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
