import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Features/Sellers/SellersEditor.dart/sellers_editor.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SellersController {
  SellersController();


  void add(BuildContext context) {
    void onConfirm(Seller seller) {

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: seller,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertSeller,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
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
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: seller,
        ServicesData.databaseSelector: updatedField,
      };

      ServiceMessage message = ServiceMessage<Seller>(
          data: data,
          event: DatabaseEvent.updateSeller,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);

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
    void onResult(List<Seller> sellers) {
    }

    ServiceMessage message = ServiceMessage<List<Seller>>(
        data: {},
        hasCallback: true,
        callback: onResult,
        event: DatabaseEvent.loadSellers,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  void remove(BuildContext context, Seller seller) {
    void onRemove() {

      Map<ServicesData, dynamic> data = {ServicesData.instance: seller};

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.deleteSeller,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
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
