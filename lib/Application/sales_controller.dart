
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_editor.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_editor.dart';

class SalesController{

  void edit(){

  }

  void add(BuildContext context){
    showDialog(context: context, builder:(context)=>  Material(child: SaleEditor(record: Record(),)));
  }

  void clear(){}
  void remove(){}


}