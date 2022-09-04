import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/orders_customer.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrdersController {

  OrdersController(this.ordersLiveModel);

  final OrdersLiveDataModel ordersLiveModel;


  void add(BuildContext context) {
    ordersLiveModel.selectedOrder =
        Order.defaultInstance();

    showDialog(
        context: context,
        builder: (context) => const Material(child: OrderProductsPanel()));
  }

  void addOrder(BuildContext context) {
    

    Order order = ordersLiveModel.selectedOrder;

    ordersLiveModel.addOrder(order);

    //TODO : update stock 

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: order,
    };

    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.insertOrder,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
    Navigator.pop(context);
  }

  void edit(BuildContext context, Order order, int index) {
   

    ordersLiveModel.selectedOrderIndex = index;
    ordersLiveModel.selectedOrder = order.copyWith();

    showDialog(
      context: context,
      builder: (context) => const Material(
        child: OrderProductsPanel(
          isEditing: true,
        ),
      ),
    );
  }

  void editCustomer(BuildContext context) {

    void onEdit(AppJson json , order){
     

    Order order = ordersLiveModel.selectedOrder;
    int index = ordersLiveModel.selectedOrderIndex;
    Map<String, dynamic> updatedField = ordersLiveModel.updatedValues;

    json.forEach((key, value) {
      updatedField[key] = value;
     });

    Provider.of<OrdersLiveDataModel>(context, listen: false)
        .updateOrder(order, index);
    }
    
    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderCustomerEditor(
          confirmLabel: Labels.save,
          order: Provider.of<OrdersLiveDataModel>(context, listen: false)
              .selectedOrder, 
              editCallback: onEdit,
        ),
      ),
    );
  }

  void updateOrder(BuildContext context) {
   

    Order order = ordersLiveModel.selectedOrder;
    int index = ordersLiveModel.selectedOrderIndex;
    Map<String, dynamic> updatedField = ordersLiveModel.updatedValues;

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: order,
      ServicesData.databaseSelector: updatedField,
    };

    ServiceMessage message = ServiceMessage<Order>(
        data: data,
        event: DatabaseEvent.updateOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

   ordersLiveModel
        .updateOrder(order, index);
  }

  void refresh(BuildContext context) {
    void onResult(List<Order> order) {
      ordersLiveModel
          .setAllOrders(order);
    }

    ServiceMessage message = ServiceMessage<List<Order>>(
        data: {},
        hasCallback: true,
        callback: onResult,
        event: DatabaseEvent.loadOrders,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  void remove(BuildContext context, Order order) {
    void onRemove() {
      ordersLiveModel.removeOrder(order);

      Map<ServicesData, dynamic> data = {ServicesData.instance: order};

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.deleteOrder,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: ConfirmDialog(
              onConfirm: onRemove,
              message: Messages.deleteElement,
            )));
  }

  void quickSearch(BuildContext context, Map<String, dynamic> query) {
    PopupsUtility.showLoadingAlert(context);

    void _onResult(List<Order> order) {
      ordersLiveModel
          .setAllOrders(order);
      Navigator.pop(context);
    }

    Map<ServicesData, dynamic> data = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<Order>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchOrders,
        data: data,
        hasCallback: true,
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
  }

  void search(BuildContext context) {
    void _onResult(List<Order> orders) {
      ordersLiveModel
          .setAllOrders(orders);
      Navigator.pop(context);
    }

    void onSearch(Map<String, dynamic> selector) {
      PopupsUtility.showLoadingAlert(context);

      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector: selector,
      };

      ServiceMessage<List<Order>> message = ServiceMessage(
          service: AppServices.database,
          event: DatabaseEvent.searchOrders,
          data: data,
          hasCallback: true,
          callback: _onResult);

      ServicesStore.instance.sendMessage(message);
    }

    List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
        RegisterSearchQueryBuilder onDeselect) {
      return [
        SearchFieldText(
          label: Labels.customer,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.customerName.name,
        ),
        SearchFieldText(
          label: Labels.status,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.status.name,
        ),
        SearchFieldDate(
          startLabel: Labels.startDate,
          endLabel: Labels.endDate,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.date.name,
        ),
      ];
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: SearchEditor(
              searchFieldBuilder: buildSearchFields,
              searchCallback: onSearch,
            )));
  }

  List<String> orderToRowData(Order order) {
    return [
      order.date ,
      order.customerName.toString(),
      order.sellerName,
      order.deposit.toString(),
      order.remainingPayement.toString(),
    ];
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
  }
}
