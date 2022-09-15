import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class OrdersReport {
  final Map<int, Order> ordersMap;

  OrdersReport(this.ordersMap);

  final List<String> _reportHeaders = [
    'client',
    'telephone',
    'wilaya',
    'produit',
    'prix',
    'versement',
    'shipping'
  ];

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
        title: 'Rapport quotidien des livraisons',
        paddings: Measures.extraSmall,
        headers: _reportHeaders,
        headersTextSize: Measures.h5TextSize,
        rowsTextSize: Measures.h5TextSize,
        cellAdapter: _orderProductWrapperToReportRow,
        data: orderProducts,
        invoicePayementAttributes: [
          InvoiceItem("Frais de port", totals.shippingTotal.toString(),
              pdf.Font.timesBold()),
          InvoiceItem(Translations.of(context)!.profit,
              totals.totalProfit.toString(), pdf.Font.timesBold()),
          InvoiceItem('Reste', totals.totalRemainingPayement.toString()),
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

  List<String> _orderProductWrapperToReportRow(
      OrderProductReportWrapper product) {
    List<String> rawData = [
      product.order.customerName,
      product.order.phoneNumber.toString(),
      product.order.city,
      product.orderProduct.product,
      product.orderProduct.sellingPrice.toString(),
      product.isLast ? product.order.deposit.toString() : "0",
      product.isLast ? product.order.deliveryCost.toString() : "0",
    ];

    return rawData;
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

    totalProfit -= shippingTotal;

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
        RecordProduct product = order.products[keys[productIndex]]!;
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
