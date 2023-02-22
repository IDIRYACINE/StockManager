import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Deposit/State/deposit.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Features/Deposit/DepositEditor/deposit_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DespositController {
  final DepositBloc bloc;
  DespositController(this.bloc);

  void addDepositProduct(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      width: Measures.containerWidthLarge,
      height: Measures.containerHeightLarge,
      const DepositEditor(),
    );
  }

  void removeDepositProduct(
      BuildContext context, RecordProductWrapper wrapper) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              bloc.add(RemoveDepositProduct(wrapper.recordProduct.timeStamp));
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

  void quickSearch(BuildContext context, Map<String, dynamic> query) {}

  void printReport(BuildContext context) {
    final record =
        BlocProvider.of<DepositBloc>(context).state.activeDepositRecord;
    BillPurchase report = BillPurchase(record);
    report.print(context);
  }

  void clear(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
              bloc.add(ClearDeposit());
            },
            message: Translations.of(context)!.messageClearAll),
      ),
    );
  }

  void completePayment(BuildContext context, RecordProductWrapper wrapper) {
    _onCompletePayment(wrapper.record);
    PopupsUtility.displayToast(context, "Generated Remaining");
  }

  void _onCompletePayment(Record record) {
    // Record remainingRecord = generateRemainingRecord(record);

  }

  Record generateRemainingRecord(Record deposit) {
    Map<String, RecordProduct> products = {};

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
