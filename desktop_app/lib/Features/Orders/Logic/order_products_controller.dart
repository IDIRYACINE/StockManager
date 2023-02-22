import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Features/Orders/OrdersEditor/order_products.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class OrderProductsController {
  OrderProductsController();

  

  void add(BuildContext context) {
    void onConfirm(RecordProduct orderProduct) {

      Navigator.pop(context);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderProductEditor(
          createCallback: onConfirm,
          editMode: false,
          confirmLabel: Translations.of(context)!.add,
          onSearch: _onSearch,
          orderProduct: RecordProduct.defaultInstance(),
          order: Order.defaultInstance(),
        ),
      ),
    );
  }

  void _onSearch(String searchValue, OnEditorSearchResulCallback callback) {
    // TODO : Implement search
  }

  void remove(BuildContext context, RecordProduct orderProduct) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: () => {},
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
  }
}
