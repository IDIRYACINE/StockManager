import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Features/Sellers/SellersEditor.dart/sellers_editor.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SellersController {
  SellersController();


  void add(BuildContext context) {
    void onConfirm(Seller seller) {

     
    }

    PopupsUtility.displayGenericPopup(
        context,
        SellersEditor(
          createCallback: onConfirm,
          confirmLabel: Translations.of(context)!.add,
          seller: Seller.defaultInstance(),
        ));
  }

  void edit(BuildContext context, Seller seller, int index) {
    void onEdit(Map<String, dynamic> updatedField, Seller seller) {


    }

    PopupsUtility.displayGenericPopup(
      context,
      SellersEditor(
        seller: seller.copyWith(),
        editMode: true,
        editCallback: onEdit,
        confirmLabel: Translations.of(context)!.update,
      ),
    );
  }

  void refresh(BuildContext context) {
   
  }

  void remove(BuildContext context, Seller seller) {
    void onRemove() {

    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: ConfirmDialog(
              onConfirm: onRemove,
              message: Translations.of(context)!.messageDeleteElement,
            )));
  }

  List<String> sellerToRowData(Seller seller) {
    return [seller.name, seller.phone.toString()];
  }

  DropdownMenuItem<Seller> sellerDropdwonAdapter(Seller type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }
}
