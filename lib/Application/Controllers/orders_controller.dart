import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/adapters_data.dart';
import 'package:stock_manager/Application/Utility/stock.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
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
  OrdersController(this.ordersLiveModel, this.stockLiveModel);

  final OrdersLiveDataModel ordersLiveModel;
  final StockLiveDataModel stockLiveModel;

  void add(BuildContext context) {
    ordersLiveModel.selectedOrder = Order.defaultInstance();

    showDialog(
        context: context,
        builder: (context) => const Material(child: OrderProductsPanel()));
  }

  void addOrder(BuildContext context) {
    Order order = ordersLiveModel.selectedOrder;

    List<String> references = [];
    for (int i = 0; i < order.products.length; i++) {
      references.add(order.products[i].reference);
    }

    StockUtility.claimStockQuantityBatch(references, -1, stockLiveModel);

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
    void onEdit(AppJson json, order) {
      Order order = ordersLiveModel.selectedOrder;
      int index = ordersLiveModel.selectedOrderIndex;

      Map<String, dynamic> updatedField = ordersLiveModel.updatedValues;

      json.forEach((key, value) {
        updatedField[key] = value;
      });

      ordersLiveModel.updateOrder(order, index);
      Navigator.pop(context);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: OrderCustomerEditor(
          confirmLabel: Labels.save,
          order: ordersLiveModel.selectedOrder,
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

    ordersLiveModel.updateOrder(order, index);
    Navigator.pop(context);
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

  void remove(BuildContext context, Order order) {
    void onRemove() {
      ordersLiveModel.removeOrder(order);

      List<String> references = [];
      for (int i = 0; i < order.products.length; i++) {
        references.add(order.products[i].reference);
      }

      StockUtility.claimStockQuantityBatch(references, 1, stockLiveModel);

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
    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();

    List<Order> orders = ordersLiveModel.orders;

    int totalOrderProducts = _calculateTotalOrderProducts(orders);

    int maxRowsPerPage = Measures.recordsMaxRowsPrint;
    int pageCount =
        Utility.calculatePageCount(totalOrderProducts, maxRowsPerPage);

    int currentPage = 0;

    PrimitiveWrapper<int> orderIndex = PrimitiveWrapper(0);

    while (currentPage < pageCount) {

      List<OrderProductReportWrapper> orderProducts =
          _selectOrderProductsOnPageAndTheirOrderIndexes(
              orders, orderIndex, maxRowsPerPage);


      OrderReportTotals totals =
          Utility.calculateOrderReportTotals(orderProducts);

      RecordsPage<OrderProductReportWrapper> recordPage = RecordsPage(
        title: Titles.dailyOrdersReport,
        paddings: Measures.extraSmall,
        headers: Titles.ordersReportHeaders,
        headersTextSize: Measures.h5TextSize,
        rowsTextSize: Measures.h5TextSize,
        cellAdapter: Adapter.orderProductWrapperToReportRow,
        data: orderProducts,
        invoicePayementAttributes: [
          InvoiceItem(Labels.totalDeposit, totals.totalDeposit.toString()),
          InvoiceItem(Labels.profit, totals.totalProfit.toString()),
          InvoiceItem(Labels.remainingPayement,
              totals.totalRemainingPayement.toString()),
          InvoiceItem(Labels.netProfit, totals.totalNetProfit.toString(),pdf.Font.timesBold()),
        ],
        endIndex: orderProducts.length,
        startIndex: 0,
      );

      appPrinter.addPage(recordPage.build());

      currentPage++;
    }

    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }

  int _calculateTotalOrderProducts(List<Order> orders) {
    int total = 0;
    for (int i = 0; i < orders.length; i++) {
      total += orders[i].products.length;
    }
    return total;
  }

  List<OrderProductReportWrapper>
      _selectOrderProductsOnPageAndTheirOrderIndexes(List<Order> orders,
          PrimitiveWrapper<int> orderIndex, int maxRowsPerPage) {

    if (orderIndex.value >= orders.length) {
      return [];
    }

    List<OrderProductReportWrapper> products = [];
    int currentRowCount = 0;

    while ((currentRowCount < maxRowsPerPage) && (orderIndex.value < orders.length)) {
      Order order = orders[orderIndex.value];
      int productIndex = 0;
      List<OrderProductReportWrapper> tempProducts = [];
      bool isLast = false;

      while ((currentRowCount < maxRowsPerPage) &&
          (productIndex < order.products.length)) {

        OrderProduct product = order.products[productIndex];
        isLast = productIndex == order.products.length - 1;
        tempProducts.add(OrderProductReportWrapper(order, product, isLast));
        currentRowCount++;
        productIndex++;
      }

      if (isLast) {
        products.addAll(tempProducts);
        orderIndex.value++;
      } else {
        return products;
      }
    }

    return products;
  }
}
