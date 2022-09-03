
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Editors/OrdersEditor/order_products.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrderProductsController{
  

void add(BuildContext context) {
    OrdersLiveDataModel liveModel = Provider.of<OrdersLiveDataModel>(context, listen: false);

    void _onConfirm(OrderProduct orderProduct) {
      liveModel.addOrderProduct(orderProduct);
      liveModel.updatedValues[OrderFields.products.name] = true;

      Navigator.pop(context);
    }

     void onSearch(String searchValue, OnEditorSearchResulCallback callback) {
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

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderProductEditor(
          createCallback: _onConfirm,
          confirmLabel: Labels.add,
          onSearch: onSearch,
          orderProduct: OrderProduct.defaultInstance(), order: liveModel.selectedOrder,
        ),
      ),
    );
  }

  void edit(BuildContext context, OrderProduct orderProduct, int index) {
    void onEdit(OrderProduct orderProduct) {
      OrdersLiveDataModel liveModel = Provider.of<OrdersLiveDataModel>(context, listen: false);
      liveModel
          .updateOrderProduct(orderProduct, index);

      liveModel.updatedValues[OrderFields.products.name] = true;

    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderProductEditor(
          orderProduct: orderProduct.copyWith(),
          editMode: true,
          editCallback: onEdit,
          confirmLabel: Labels.update,
          order:  Provider.of<OrdersLiveDataModel>(context, listen: false).selectedOrder,
        ),
      ),
    );
  }


  void remove(BuildContext context, OrderProduct orderProduct) {
    void onRemove() {
      OrdersLiveDataModel liveModel =
          Provider.of<OrdersLiveDataModel>(context, listen: false);

      liveModel.removeOrderProduct(orderProduct);
      liveModel.updatedValues[OrderFields.products.name] = true;

  
  }
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: ConfirmDialog(
              onConfirm: onRemove,
              message: Messages.deleteElement,
            )));
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
  }

}