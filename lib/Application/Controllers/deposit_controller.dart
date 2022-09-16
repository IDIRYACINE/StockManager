import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/validators.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DespositController {
  DespositController(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;

  void addDeposit(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      width: 1000,
      height: 800,
      DepositEditor(
        record: recordsLiveModel.activeDepositRecord,
        onSearch: _onSearchProduct,
        addDepositCallback: _onAddDeposit,
        addDepositProductCallback: (record) => _onAddDepositProduct(context),
        confirmLabel: Translations.of(context)!.add,
      ),
    );
  }

  void _onSearchProduct(
      String searchValue, OnEditorSearchResulCallback callback) {
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
  }

  void _onAddDeposit(Record record) {
    recordsLiveModel.addActiveDepositRecord();

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

  void addDepositProduct(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      width: 1000,
      height: 800,
      DepositEditor(
        record: Record.defaultInstance(
            paymentType: PaymentTypes.deposit,
            timeStamp: Record.depositTimeStamp),
        onSearch: _onSearchProduct,
        addDepositCallback: _onAddDeposit,
        addDepositProductCallback: (record) => _onAddDepositProduct(context),
        confirmLabel: Translations.of(context)!.add,
      ),
    );
  }

  void _onAddDepositProduct(BuildContext context) {
    Utility.displayToastMessage(
        context, Translations.of(context)!.addedProduct);
  }

  void edit(BuildContext context, Record record, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: DepositEditor(
          record: record.copyWith(),
          editMode: true,
          editCallback: _onEdit,
          confirmLabel: Translations.of(context)!.update,
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
    recordsLiveModel.updateDepositRecord(record);
  }

  void remove(BuildContext context, Record record) {
    void onRemove() {
      recordsLiveModel.removeDepositRecord(record);

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

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: onRemove,
            message: Translations.of(context)!.messageDeleteElement),
      ),
    );
  }

  DropdownMenuItem<PaymentTypes> paymentTypesDropdownAdapter(
      PaymentTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  void quickSearch(BuildContext context, Map<String, dynamic> query) {
    PopupsUtility.showLoadingAlert(context);

    void _onResult(List<Record> records) {
      recordsLiveModel.setAllDeposits(records);
      Navigator.pop(context);
    }

    Map<ServicesData, dynamic> data = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<Record>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseRecord,
        data: data,
        hasCallback: true,
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
  }

  void printReport(BuildContext context) {
    BillPurchase report = BillPurchase(recordsLiveModel.activeDepositRecord
        );
    report.print(context);
  }

  void clear(BuildContext context) {
    recordsLiveModel.clearDeposits();
  }

  void completePayment(BuildContext context, Record data) {
    PopupsUtility.displayGenericPopup(
      context,
      width: 100,
      height: 100,
      TextFieldDialog(
        label: Translations.of(context)!.deposit,
        validator: ValueValidator.validateNumber,
        initialValue: data.remainingPayement.toString(),
        onConfirm: (String? value) {
          _onCompletePayment(data, value!);
        },
      ),
    );
  }

  void _onCompletePayment(Record record, String newDeposit) {
    // double parsedDeposit = double.parse(newDeposit);

    // Record remainingRecord = record.copyWith(
    //   payementType: PaymentTypes.remaining.name,
    //   payementTypeIndex: PaymentTypes.remaining.index,
    //   remainingPayement: -1 * (record.remainingPayement - parsedDeposit),
    //   deposit: parsedDeposit,
    //   date: DateTime.now(),
    // );

    // recordsLiveModel.addRecord(remainingRecord);

    // Map<ServicesData, dynamic> messageData = {
    //   ServicesData.instance: remainingRecord,
    // };

    // ServiceMessage<List<Record>> message = ServiceMessage(
    //   service: AppServices.database,
    //   event: DatabaseEvent.insertRemainingRecord,
    //   data: messageData,
    // );

    // ServicesStore.instance.sendMessage(message);
  }
}
