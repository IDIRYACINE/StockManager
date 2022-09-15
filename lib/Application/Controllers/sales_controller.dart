import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_editor.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SalesController {
  SalesController(this.recordsLiveModel, this.stockLiveModel);

  RecordsLiveDataModel recordsLiveModel;
  StockLiveDataModel stockLiveModel;

  void editSale(BuildContext context, Record record, int index) {

    PopupsUtility.displayGenericPopup(
      context,
      SizedBox(
        width: 1000,
        height: 800,
        child: SaleEditor(
          record: record.copyWith(),
          editMode: true,
          confirmLabel: Translations.of(context)!.update,
          editCallback: _onEdit,
        ),
      ),
    );
  }

  void _onEdit(Map<String, dynamic> updatedField, Record record) {
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
        ServicesData.databaseSelector: updatedField,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.updatePurchaseRecord,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);

    }

  void addSale(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      width: 1000,
      height: 800,
      SaleEditor(
        record: Record.defaultInstance(
          paymentType: PaymentTypes.payement,
          timeStamp: Record.purchaseTimeStamp,
        ),
        onSearch: _onSearchProduct,
        confirmLabel: Translations.of(context)!.add,
        createCallback: _onAddSale,
      ),
    );
  }

  void _onAddSale(Record record) {
    recordsLiveModel.addSaleRecord(record);

    record.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, -1);
    });

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: record,
    };

    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.insertPurchaseRecord,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

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
              recordsLiveModel.clearSaleRecord();
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
              onRemoveSale(record);
            },
            message: Translations.of(context)!.messageDeleteElement),
      ),
    );
  }

  void onRemoveSale(Record record) {
    recordsLiveModel.removeSaleRecord(record);

    record.products.forEach((key, value) {
      stockLiveModel.reclaimStock(key, value.colorId, value.sizeId, 1);
    });

    Map<ServicesData, dynamic> data = {ServicesData.instance: record};
    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.deletePurchaseRecord,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  void removeSaleProduct(BuildContext context, RecordProductWrapper wrapper) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              onRemoveSaleProduct(wrapper.record, wrapper.recordProduct);
            },
            message: Translations.of(context)!.messageDeleteElement),
      ),
    );
  }

  void onRemoveSaleProduct(Record record, RecordProduct recordProduct) {
    record.products.remove(recordProduct.timeStamp);

    stockLiveModel.reclaimStock(recordProduct.reference, recordProduct.colorId,
        recordProduct.sizeId, 1);

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: recordProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name, recordProduct.timeStamp)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: data,
        event: DatabaseEvent.deletePurchaseRecordProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  void printPurchases(BuildContext context) {
    BillPurchase bill = BillPurchase(
        recordsLiveModel.activePurchaseRecord, Record.purchaseTimeStamp.toString());
    bill.print(context);
  }
}
