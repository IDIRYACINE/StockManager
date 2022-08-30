
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/deposits.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/Generic/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DespositController {

  VoidCallback? _turnOffLastSelectedRow;
  late UpdateRowCallback _updateLastSelectedRow;
  int _lastRowIndex = -1;

  void add(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: DepositEditor(
          confirmCallback:
              Provider.of<DepositsLiveDataModel>(context, listen: false).add,
          confirmLabel: Labels.add,
          record: Record(),
        ),
      ),
    );
  }

  void edit(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: DepositEditor(
          record: Provider.of<DepositsLiveDataModel>(context, listen: false)
              .selectedRecord,
          confirmCallback:
              Provider.of<DepositsLiveDataModel>(context, listen: false).update,
          confirmLabel: Labels.update,
        ),
      ),
    );
  }

  void refresh(BuildContext context) {}

  void remove(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Material(
                child: ConfirmDialog(
              onConfirm: () {},
              message: Messages.deleteElement,
            )));
  }


  List<String> productToRowData(Product product) {
    return [
      product.name,
      product.productFamily,
      product.totalQuantity.toString(),
      product.originalPrice.toString(),
      product.name,
    ];
  }

  DropdownMenuItem<StockTypes> stockTypesAdapter(StockTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  void registerLastSelectedRow(VoidCallback turnOffRow , int rowIndex,UpdateRowCallback updateRow) {
    if(_lastRowIndex != rowIndex && _turnOffLastSelectedRow != null) {
      _updateLastSelectedRow(_turnOffLastSelectedRow);
    }
    
    _lastRowIndex = rowIndex;
    _turnOffLastSelectedRow = turnOffRow;
    _updateLastSelectedRow = updateRow;
  }

}

  

