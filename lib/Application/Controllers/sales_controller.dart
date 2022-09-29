import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_event_emitters.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SalesController {
  SalesController(this.recordsLiveModel, this.stockLiveModel);

  RecordsLiveDataModel recordsLiveModel;
  StockLiveDataModel stockLiveModel;

  void _onSearchProduct(
      String searchValue, OnEditorSearchResulCallback callback) {
    Product? searchedProduct = stockLiveModel.searchProduct(searchValue);

    if (searchedProduct == null) {
      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector:
            SelectorBuilder().eq(ProductFields.reference.name, searchValue).map
      };

      ServiceMessage message = ServiceMessage<List<Product>>(
          callback: callback,
          hasCallback: true,
          data: data,
          event: DatabaseEvent.searchProduct,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
    } else {
      callback([searchedProduct]);
    }
  }

  void clearSales(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              PurchaseEmitter.emitPurchaseEvent(SalesEvents.clearPurchase);
            },
            message: Translations.of(context)!.messageClearAll),
      ),
    );
  }

  void removeSale(BuildContext context, Record record) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              PurchaseEmitter.emitPurchaseEvent(
                  SalesEvents.removePurchase, data :record);
            },
            message: Translations.of(context)!.messageDeleteElement),
      ),
    );
  }

  void removeSaleProduct(BuildContext context, RecordProductWrapper wrapper) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              PurchaseEmitter.emitPurchaseEvent(
                  SalesEvents.removePurchaseProduct,data : wrapper);
            },
            message: Translations.of(context)!.messageDeleteElement),
      ),
    );
  }

  void addSaleProduct(
    BuildContext context,
  ) {
    PopupsUtility.displayGenericPopup(
      context,
      width: Measures.containerWidthLarge,
      height: Measures.containerHeightLarge,
      SaleEditor(
        record: recordsLiveModel.activePurchaseRecord,
        onSearch: _onSearchProduct,
        confirmLabel: Translations.of(context)!.add,
        addSaleCallback: (record) => PurchaseEmitter.emitPurchaseEvent(
            SalesEvents.addPurchase, data : record,broadcast: true),
        addSaleProductCallback: (record) => Utility.displayToastMessage(
            context, Translations.of(context)!.addedProduct),
      ),
    );
  }

  void printPurchases(BuildContext context) {
    BillPurchase bill = BillPurchase(recordsLiveModel.activePurchaseRecord);
    bill.print(context);
  }
}
