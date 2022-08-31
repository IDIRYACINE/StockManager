
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/SellersEditor.dart/sellers_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SellersController {

  Callback<bool>? _turnOffLastSelectedRow;
  int _lastRowIndex = -1;

  void add(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: SellersEditor(
          onConfirm:
              Provider.of<SellersLiveDataModel>(context, listen: false).add,
          confirmLabel: Labels.add,
          seller: Seller(name:'',phone:0,imageUrl: ''),
        ),
      ),
    );
  }

  void edit(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: SellersEditor(
          seller: Provider.of<SellersLiveDataModel>(context, listen: false)
              .selectedSeller,
          onConfirm:
              Provider.of<SellersLiveDataModel>(context, listen: false).update,
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


  List<String> sellerToRowData(Seller seller) {
    return [
     seller.name,
     seller.phone.toString()
    ];
  }

  DropdownMenuItem<Seller> selelrAdapter(Seller type) {
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

  

