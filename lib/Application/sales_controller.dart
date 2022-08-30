
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SalesController{
  

  void edit(BuildContext context){
        showDialog(context: context, builder:(context)=>   Material(child: SaleEditor(record: Record(),)));

  }

  void add(BuildContext context){
    showDialog(context: context, builder: (context)=>   Material(child: SaleEditor(record: Record(),)));
  }

  void clear(BuildContext context){
    showDialog(context: context, builder: (context)=>   AlertDialog(content: ConfirmDialog(onConfirm: (){}, message: Messages.clearAll)));
  }
  void remove(BuildContext context){
    showDialog(context: context, builder: (context)=>   AlertDialog(content: ConfirmDialog(onConfirm: (){}, message: Messages.deleteElement)));
  }


}