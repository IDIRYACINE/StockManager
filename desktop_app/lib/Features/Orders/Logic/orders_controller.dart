import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Features/Orders/State/orders.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/report_orders.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Features/Orders/OrdersEditor/orders_customer.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Features/Orders/OrdersEditor/orders_spreaded.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class OrdersController {
  OrdersController();


  void addSpreadedOrder(BuildContext context) {

    PopupsUtility.displayGenericPopup(
      context,
      SizedBox(
        width: Measures.containerWidthLarge,
        height: Measures.containerHeightLarge,
        child: SpreardedOrderEditor(
          order: Order.defaultInstance(),
          createOrderCallback: (order) =>
              {},
          onSearch: _onSearchProduct,
          confirmLabel: Translations.of(context)!.add,
        ),
      ),
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

  void editCustomer(BuildContext context) {
    void onEdit(AppJson json, order) {
      Navigator.pop(context);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderCustomerEditor(
          confirmLabel: Translations.of(context)!.save,
          order: Order.defaultInstance(),
          editCallback: onEdit,
        ),
      ),
    );
  }

  void refresh(BuildContext context) {
    void onResult(List<Order> order) {
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
            
          },
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  void quickSearch(BuildContext context, Map<String, dynamic> query) {
  }

  void search(BuildContext context) {
    void onResult(List<Order> orders) {
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
          callback: onResult);

      ServicesStore.instance.sendMessage(message);
    }

    List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
        RegisterSearchQueryBuilder onDeselect) {
      return [
        SearchFieldText(
          label: Translations.of(context)!.customer,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.customerName.name,
        ),
        SearchFieldText(
          label: Translations.of(context)!.status,
          onSelected: onSelect,
          onDeselected: onDeselect,
          identifier: OrderFields.status.name,
        ),
        SearchFieldDate(
          startLabel: Translations.of(context)!.startDate,
          endLabel: Translations.of(context)!.endDate,
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
    final orders = BlocProvider.of<OrdersBloc>(context).state.orders;

        OrdersReport report = OrdersReport(orders);
    report.printReport(context);
  }
}
