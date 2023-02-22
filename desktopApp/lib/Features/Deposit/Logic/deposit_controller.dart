import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Deposit/State/deposit.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Features/Deposit/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DespositController {
  DespositController( );

  
  


  void addDepositProduct(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      width: Measures.containerWidthLarge,
      height: Measures.containerHeightLarge,
      const DepositEditor(
     
        // addDepositCallback: (record) =>
        //     DepositEmitter.emitDepositEvent(SalesEvents.addDeposit, data :record,broadcast: true),
        // addDepositProductCallback: (product) => Utility.displayToastMessage(
        //     context, Translations.of(context)!.addedProduct),
        // confirmLabel: Translations.of(context)!.add,
      ),
    );
  }

  void removeDeposit(BuildContext context, Record record) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () => {},
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
  }

  void printReport(BuildContext context) {
    final record = BlocProvider.of<DepositBloc>(context).state.activeDepositRecord;
    BillPurchase report = BillPurchase(record);
    report.print(context);
  }

  void clear(BuildContext context) {
  }

  void completePayment(BuildContext context, RecordProductWrapper wrapper) {
    _onCompletePayment(wrapper.record);
    PopupsUtility.displayToast(context, "Generated Remaining");
  }

  void _onCompletePayment(Record record) {

    Record remainingRecord = generateRemainingRecord(record);

    Map<ServicesData, dynamic> messageData = {
      ServicesData.instance: remainingRecord,
    };

    ServiceMessage<List<Record>> message = ServiceMessage(
      service: AppServices.database,
      event: DatabaseEvent.insertRemainingRecord,
      data: messageData,
    );

    ServicesStore.instance.sendMessage(message);
  }

  Record generateRemainingRecord(Record deposit){

    Map<String,RecordProduct> products = {};

    deposit.products.forEach((timestamp, product) {
      RecordProduct newProduct = product.copyWith(
        remainingPayement: 0,
        deposit: product.remainingPayement,
      );

      products[timestamp] = newProduct;
    });

    Record remainingRecord = deposit.copyWith(
      payementType: PaymentTypes.remaining.name,
      payementTypeIndex: PaymentTypes.remaining.index,
      products: products,
      remainingPayement: 0,
      totalDeposit: deposit.remainingPayement,
    );

    return remainingRecord;
  }
  
}
