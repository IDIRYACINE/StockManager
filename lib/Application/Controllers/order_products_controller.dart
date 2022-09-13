import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/order_products.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrderProductsController {
  OrderProductsController(this.stockLiveModel, this.ordersLiveModel);

  final StockLiveDataModel stockLiveModel;
  final OrdersLiveDataModel ordersLiveModel;

  bool isEditing = false;

  void add(BuildContext context) {
    void _onConfirm(OrderProduct orderProduct) {
      _onAdd(orderProduct);

      Navigator.pop(context);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderProductEditor(
          createCallback: _onConfirm,
          editMode: false,
          confirmLabel: Labels.add,
          onSearch: _onSearch,
          orderProduct: OrderProduct.defaultInstance(),
          order: ordersLiveModel.selectedOrder,
        ),
      ),
    );
  }

  void _onAdd(OrderProduct orderProduct) {
    ordersLiveModel.addOrderProduct(orderProduct);

    stockLiveModel.reclaimStock(orderProduct.reference,
        orderProduct.productColorId, orderProduct.productSizeId, -1);

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: orderProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name,
              ordersLiveModel.selectedOrder.timeStamp)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: data,
        event: DatabaseEvent.insertOrderProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  void _updateOrder(AppJson values) {
    Order order = ordersLiveModel.selectedOrder;
    
    Map<ServicesData, dynamic> data = {
      ServicesData.instance: order,
      ServicesData.updatedValues : values,
     
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: data,
        event: DatabaseEvent.updateOrder,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
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


  void remove(BuildContext context, OrderProduct orderProduct) {
    void onRemove() {
      _onRemove(orderProduct);
      
      Order order = ordersLiveModel.selectedOrder;
      final ModifierBuilder modifierBuilder = ModifierBuilder()
      .set(OrderFields.remainingPayement.name, order.remainingPayement)
      .set(OrderFields.totalPrice.name, order.totalPrice);
      
      _updateOrder(modifierBuilder.map);

      if(order.products.isEmpty){
        int index =ordersLiveModel.selectedOrderIndex;
        ordersLiveModel.removeOrder(order, index);
        Provider.of<ControllersProvider>(context,listen: false).ordersController.onRemove(order,index);
      }
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

  void _onRemove(OrderProduct orderProduct) {
    ordersLiveModel.removeOrderProduct(orderProduct);

    stockLiveModel.reclaimStock(orderProduct.reference,
        orderProduct.productColorId, orderProduct.productSizeId, 1);

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: orderProduct,
      ServicesData.databaseSelector: SelectorBuilder()
          .eq(OrderFields.timeStamp.name,
              ordersLiveModel.selectedOrder.timeStamp)
          .map
    };

    ServiceMessage message = ServiceMessage<List<Product>>(
        data: data,
        event: DatabaseEvent.deleteOrderProduct,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }
}
