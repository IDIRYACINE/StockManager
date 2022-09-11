import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class Utility {
  static String getDateString() {
    DateTime now = DateTime.now();
    return '${now.year}-${now.month}-${now.day}';
  }

  static int getTimeStamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static DateTime getDate() {
    return DateTime.now();
  }

  static DateTime getTodayEndSearchTime() {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 23, 59, 59);
  }

  static String formatDateTimeToDisplay(DateTime time) {
    return '${time.year}-${time.month}-${time.day} ${time.hour}:${time.minute}';
  }

  static void searchByTodayDate(SelectorBuilder selector) {
    DateTime now = DateTime.now();

    DateTime start = DateTime(now.year, now.month, now.day, 0, 0, 0);

    selector.gt(RecordFields.date.name, start);
  }

  static RecordReportTotals calculateRecordReportTotals(List<Record> records,
      [int startIndex = 0, int? endIndex]) {
    int length = ((endIndex == null) || endIndex > records.length)
        ? records.length
        : endIndex;

    double totalProfit = 0;
    double totalNetProfit = 0;
    double totalDeposit = 0;
    double totalRemainingPayement = 0;

    for (int i = startIndex; i < length; i++) {
      Record record = records[i];
      totalProfit += record.sellingPrice;
      totalNetProfit += (record.sellingPrice - record.originalPrice);
      totalDeposit += record.deposit;
      totalRemainingPayement += record.remainingPayement;
    }

    totalProfit += totalDeposit;
    totalNetProfit += totalDeposit;

    return RecordReportTotals(
        totalDeposit, totalRemainingPayement, totalProfit, totalNetProfit);
  }

  static OrderReportTotals calculateOrderReportTotals(
      List<OrderProductReportWrapper> orders) {
    double totalProfit = 0;
    double totalNetProfit = 0;

    for (int i = 0; i < orders.length; i++) {
      OrderProduct product = orders[i].orderProduct;
      totalProfit += product.sellingPrice ;
      totalNetProfit += product.sellingPrice - product.buyingPrice;
    }

    Order order = orders.first.order;

    double totalDeposit = order.deposit;
    double totalRemainingPayement = totalProfit - totalDeposit;
    double shippingTotal = order.deliveryCost;
    totalNetProfit -= totalRemainingPayement;

    return OrderReportTotals(totalDeposit, totalRemainingPayement, totalProfit,
        totalNetProfit, shippingTotal);
  }

  static int calculatePageCount(int itemsLength, int maxRowsPerPage) {
    int expectedPageCount = (itemsLength / maxRowsPerPage).floor();
    return expectedPageCount < 1 ? 1 : expectedPageCount;
  }
}
