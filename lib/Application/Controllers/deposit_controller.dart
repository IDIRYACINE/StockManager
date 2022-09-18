import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/validators.dart';
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
import 'package:stock_manager/Ui/Editors/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DespositController {
  DespositController(this.recordsLiveModel, this.stockLiveModel);

  final RecordsLiveDataModel recordsLiveModel;
  final StockLiveDataModel stockLiveModel;


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
        addDepositCallback: (record) =>
            DepositEmitter.emitDepositEvent(DepositEvents.addDeposit, record),
        addDepositProductCallback: (product) => Utility.displayToastMessage(
            context, Translations.of(context)!.addedProduct),
        confirmLabel: Translations.of(context)!.add,
      ),
    );
  }

  void removeDeposit(BuildContext context, Record record) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () => DepositEmitter.emitDepositEvent(
                DepositEvents.removeDeposit, record),
            message: Translations.of(context)!.messageDeleteElement),
      ),
    );
  }

  void removeDepositProduct(
      BuildContext context, RecordProductWrapper wrapper) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              DepositEmitter.emitDepositEvent(
                  DepositEvents.removeDepositProduct, wrapper);
            },
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
    DepositEmitter.emitDepositEvent(DepositEvents.quickSearchDeposit, query);
  }

  void printReport(BuildContext context) {
    BillPurchase report = BillPurchase(recordsLiveModel.activeDepositRecord);
    report.print(context);
  }

  void clear(BuildContext context) {
    DepositEmitter.emitDepositEvent(DepositEvents.clearDeposit);
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
