import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SalesController {
  SalesController(this.recordsLiveModel, this.stockLiveModel);

  RecordsLiveDataModel recordsLiveModel;
  StockLiveDataModel stockLiveModel;

  void edit(BuildContext context, Record record, int index) {
    void onEdit(Map<String, dynamic> updatedField, Record record) {
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
        ServicesData.databaseSelector: updatedField,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.updatePurchaseRecord,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);

      recordsLiveModel.updateSaleRecordAt(record, index);
    }
PopupsUtility.displayGenericPopup(
        context,
        SizedBox(
          width: 1000,
          height: 800,
          child:SaleEditor(
              record: record.copyWith(),
              editMode: true,
              confirmLabel: Labels.update,
              editCallback: onEdit,
            )
        ));
    
  }

  void add(BuildContext context) {
    void _onConfirm(Record record) {
      recordsLiveModel.addSaleRecord(record);
      stockLiveModel.reclaimStock(record.reference, record.colorId, record.sizeId, -1);

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: record,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertPurchaseRecord,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);

      Navigator.pop(context);
    }

    void onSearch(String searchValue, OnEditorSearchResulCallback callback) {
      Product? searchedProduct = stockLiveModel.searchProduct(searchValue);

      if (searchedProduct == null) {
        Map<ServicesData, dynamic> data = {
          ServicesData.databaseSelector: SelectorBuilder()
              .eq(ProductFields.reference.name, searchValue)
              .map
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

PopupsUtility.displayGenericPopup(
        context,
         width: 1000,
          height: 800,
        
          SaleEditor(
              record: Record.defaultInstance(
                paymentType: PaymentTypes.payement,
              ),
              onSearch: onSearch,
              confirmLabel: Labels.add,
              createCallback: _onConfirm,
            )
        );
    
  }

  void clear(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: ConfirmDialog(
                onConfirm: () {
                  recordsLiveModel.clearSaleRecord();
                },
                message: Messages.clearAll)));
  }

  void remove(BuildContext context, Record record) {
    void onRemove() {
      recordsLiveModel.removeSaleRecord(record);
      stockLiveModel.reclaimStock(record.reference, record.colorId, record.sizeId, 1);

      Map<ServicesData, dynamic> data = {ServicesData.instance: record};
      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.deletePurchaseRecord,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: ConfirmDialog(
                onConfirm: onRemove, message: Messages.deleteElement)));
  }

  void printPurchases(BuildContext context) {
    BillPurchase bill = BillPurchase(Record.depositTimeStampId.toString(),recordsLiveModel.purchaseRecords);
    bill.print(context);
  }

}
