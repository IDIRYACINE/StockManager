
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DespositController {

  Callback<bool>? _turnOffLastSelectedRow;
  int _lastRowIndex = -1;

  void add(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: DepositEditor(
          onConfirm:
              Provider.of<RecordsLiveDataModel>(context, listen: false).addDepositRecord,
          confirmLabel: Labels.add,
          record: Record(payementType: PaymentTypes.deposit.name), onSearch: (String value) {  },
        ),
      ),
    );
  }

  void edit(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: DepositEditor(
          record: Provider.of<RecordsLiveDataModel>(context, listen: false)
              .selectedDepositRecord,
          onConfirm:
              Provider.of<RecordsLiveDataModel>(context, listen: false).updateDepositRecord,
          confirmLabel: Labels.update, onSearch: (String value) {  },
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
    ];
  }

  DropdownMenuItem<StockTypes> stockTypesAdapter(StockTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  void registerLastSelectedRow(Callback<bool> turnOffRow , int rowIndex,VoidCallback updateRow) {
    if(_lastRowIndex != rowIndex && _turnOffLastSelectedRow != null) {
      _turnOffLastSelectedRow!(false);
    }
    
    _lastRowIndex = rowIndex;
    _turnOffLastSelectedRow = turnOffRow;

    turnOffRow(true);
  }

}

  

