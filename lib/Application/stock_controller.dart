
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_editor.dart';

class StockController{  
  

  void edit(BuildContext context) {

  }

  void add(BuildContext context) {
    PopupsUtility.displayGenericPopup(context, const ProductEditor());
  }

  void refresh(BuildContext context) {

  }

  void remove(BuildContext context) {

  }

  void search(BuildContext context) {

  }


}