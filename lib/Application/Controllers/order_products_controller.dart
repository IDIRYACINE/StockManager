import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_event_emitters.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/order_products.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class OrderProductsController {
  OrderProductsController( this.ordersLiveModel);

  final OrdersLiveDataModel ordersLiveModel;

  bool isEditing = false;

  void add(BuildContext context) {
    void _onConfirm(RecordProduct orderProduct) {
      OrderEmiter.emitOrderEvent(OrderEvents.addOrderProduct, orderProduct);

      Navigator.pop(context);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderProductEditor(
          createCallback: _onConfirm,
          editMode: false,
          confirmLabel: Translations.of(context)!.add,
          onSearch: _onSearch,
          orderProduct: RecordProduct.defaultInstance(),
          order: ordersLiveModel.selectedOrder,
        ),
      ),
    );
  }

  void _onSearch(String searchValue, OnEditorSearchResulCallback callback) {
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

  void remove(BuildContext context, RecordProduct orderProduct) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: () => OrderEmiter.emitOrderEvent(
              OrderEvents.removeOrderProduct, orderProduct),
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
  }
}
