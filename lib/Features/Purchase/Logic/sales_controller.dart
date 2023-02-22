import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Purchase/State/bloc.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Domain/Reports/bill_purchase.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Features/Purchase/SaleEditor/sale_editor.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SalesController {
  SalesController();

  void clearSales(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
            onConfirm: () {
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
      const SaleEditor(),
    );
  }

  void printPurchases(BuildContext context) {
    final record =
        BlocProvider.of<PurchaseBloc>(context).state.activePurchaseRecord;

    BillPurchase bill = BillPurchase(record);
    bill.print(context);
  }
}
