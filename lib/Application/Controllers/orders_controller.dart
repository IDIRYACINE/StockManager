import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/report_orders.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/orders_customer.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/orders_spreaded.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class OrdersController {
  OrdersController(this.ordersLiveModel, this.stockLiveModel);

  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  void add(BuildContext context) {
    ordersLiveModel.selectedOrder = Order.defaultInstance();
    // _addOrder();

    showDialog(
        context: context,
        builder: (context) => const Material(child: OrderProductsPanel()));
  }

  void addSpreadedOrder(BuildContext context) {
    ordersLiveModel.selectedOrder = Order.defaultInstance();

    PopupsUtility.displayGenericPopup(
      context,
      SizedBox(
          width: 1000,
          height: 800,
          child: SpreardedOrderEditor(
            order: ordersLiveModel.selectedOrder,
            createOrderCallback: _addOrder,
            onSearch: _onSearchProduct,
            confirmLabel: Translations.of(context).add,
          )),
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

  void _addOrder(Order order) {
    ordersLiveModel.addOrder(order);

    order.products.forEach((key, value) {
      stockLiveModel.reclaimStock(
          key, value.productColorId, value.productSizeId, -1);
    });

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: order,
    };

    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.insertOrder,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  void edit(BuildContext context, Order order, int index) {
    ordersLiveModel.selectedOrderIndex = index;
    ordersLiveModel.selectedOrder = order;

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
    void onEdit(AppJson json, order) {
      _updateOrderCustomer(json);
      Navigator.pop(context);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderCustomerEditor(
          confirmLabel: Translations.of(context).save,
          order: ordersLiveModel.selectedOrder,
          editCallback: onEdit,
        ),
      ),
    );
  }

  void _updateOrderCustomer(AppJson<dynamic> updatedValues) {
    Order order = ordersLiveModel.selectedOrder;
    int index = ordersLiveModel.selectedOrderIndex;

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: order,
      ServicesData.updatedValues: updatedValues,
    };

    ServiceMessage message = ServiceMessage<Order>(
        data: data,
        event: DatabaseEvent.updateOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);

    ordersLiveModel.updateOrder(order, index);
  }

  void refresh(BuildContext context) {
    void onResult(List<Order> order) {
      ordersLiveModel.setAllOrders(order);
    }

    SelectorBuilder selector = SelectorBuilder();
    Utility.searchByTodayDate(selector);

    ServiceMessage message = ServiceMessage<List<Order>>(
        data: {
          ServicesData.databaseSelector: selector.map,
        },
        hasCallback: true,
        callback: onResult,
        event: DatabaseEvent.searchOrders,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  void remove(BuildContext context, Order order, int index) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: ConfirmDialog(
              onConfirm: () {
                onRemove(order, index);
              },
              message: Translations.of(context).messageDeleteElement,
            )));
  }

  void onRemove(Order order, int index) {
    ordersLiveModel.removeOrder(order, index);

    ordersLiveModel.addOrder(order);

    order.products.forEach((key, value) {
      stockLiveModel.reclaimStock(
          key, value.productColorId, value.productSizeId, 1);
    });

    Map<ServicesData, dynamic> data = {ServicesData.instance: order};

    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.deleteOrder,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  void quickSearch(BuildContext context, Map<String, dynamic> query) {
    PopupsUtility.showLoadingAlert(context);

    void _onResult(List<Order> order) {
      ordersLiveModel.setAllOrders(order);
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
      ordersLiveModel.setAllOrders(orders);
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
          label: Translations.of(context).customer,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.customerName.name,
        ),
        SearchFieldText(
          label: Translations.of(context).status,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.status.name,
        ),
        SearchFieldDate(
          startLabel: Translations.of(context).startDate,
          endLabel: Translations.of(context).endDate,
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
      Utility.formatDateTimeToDisplay(order.date),
      order.customerName.toString(),
      order.sellerName,
      order.deposit.toString(),
      order.remainingPayement.toString(),
    ];
  }

  void cancel(BuildContext context) {
    Navigator.pop(context);
  }

  void printReport(BuildContext context) {
    OrdersReport report = OrdersReport(ordersLiveModel.orders);
    report.printReport(context);
  }

  void done() {}
}
