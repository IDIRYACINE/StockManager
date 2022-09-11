import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/adapters_data.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrdersReport {
  final Map<int, Order> ordersMap;

  OrdersReport(this.ordersMap);

  void printReport(BuildContext context) {
    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();

    int maxRowsPerPage = Measures.recordsMaxRowsPrint;
    int pageCount =
        Utility.calculatePageCount(ordersMap.length, maxRowsPerPage);

    int currentPage = 0;

    PrimitiveWrapper<int> orderIndex = PrimitiveWrapper(0);

    while (currentPage < pageCount) {
      List<OrderProductReportWrapper> orderProducts =
          _selectOrderProducts(ordersMap, orderIndex, maxRowsPerPage);

      _TotalsWrapper totals = _calculateOrderReportTotals(orderProducts);

      RecordsPage<OrderProductReportWrapper> recordPage = RecordsPage(
        title: Titles.dailyOrdersReport,
        paddings: Measures.extraSmall,
        headers: Titles.ordersReportHeaders,
        headersTextSize: Measures.h5TextSize,
        rowsTextSize: Measures.h5TextSize,
        cellAdapter: Adapter.orderProductWrapperToReportRow,
        data: orderProducts,
        invoicePayementAttributes: [
          InvoiceItem(Labels.profit, totals.totalProfit.toString(),
              pdf.Font.timesBold()),
          InvoiceItem(Labels.deliveryCost, totals.shippingTotal.toString(),
              pdf.Font.timesBold()),
          InvoiceItem(Labels.remainingPayement,
              totals.totalRemainingPayement.toString()),
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

  static _TotalsWrapper _calculateOrderReportTotals(
      List<OrderProductReportWrapper> orders) {
    int lastExaminedId = orders[0].order.timeStamp;
    double totalProfit = orders[0].order.deposit;
    double totalRemainingPayement = orders[0].order.remainingPayement;
    double shippingTotal = orders[0].order.deliveryCost;

    for (int i = 0; i < orders.length; i++) {
      Order order = orders[i].order;
      if (order.timeStamp != lastExaminedId) {
        totalProfit += order.deposit;
        totalRemainingPayement += order.remainingPayement;
        shippingTotal += order.deliveryCost;
        lastExaminedId = order.timeStamp;
      }
    }

    return _TotalsWrapper(totalRemainingPayement, totalProfit, shippingTotal);
  }

  List<OrderProductReportWrapper> _selectOrderProducts(Map<int, Order> orders,
      PrimitiveWrapper<int> orderIndex, int maxRowsPerPage) {
    if (orderIndex.value >= orders.length) {
      return [];
    }

    List<OrderProductReportWrapper> products = [];
    int currentRowCount = 0;
    final List<int> orderskeys = orders.keys.toList();

    while ((currentRowCount < maxRowsPerPage) &&
        (orderIndex.value < orders.length)) {
      Order order = orders[orderskeys[orderIndex.value]]!;

      List<String> keys = order.products.keys.toList();
      int productIndex = 0;
      List<OrderProductReportWrapper> tempProducts = [];
      bool isLast = false;

      while ((currentRowCount < maxRowsPerPage) &&
          (productIndex < order.products.length)) {
        OrderProduct product = order.products[keys[productIndex]]!;
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

class _TotalsWrapper {
  final double totalRemainingPayement;
  final double totalProfit;
  final double shippingTotal;

  _TotalsWrapper(
      this.totalRemainingPayement, this.totalProfit, this.shippingTotal);
}
