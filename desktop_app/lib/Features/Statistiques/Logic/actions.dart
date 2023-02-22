import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

Future<void> searchStatistiques(AppJson query) async {
  void onResult(List<StatsRecord> records) {}

  Map<ServicesData, dynamic> requestData = {
    ServicesData.databaseSelector: query,
  };

  ServiceMessage<List<StatsRecord>> message = ServiceMessage(
      service: AppServices.database,
      event: DatabaseEvent.searchPurchaseStatistiques,
      data: requestData,
      hasCallback: true,
      callback: onResult);

  ServicesStore.instance.sendMessage(message);
}

Future<void> updatePurchaseStatistiques(Record record) async {
  int modifier = 1;
  StatsProductChanges productStatsChanges =
      _recordProductsToStats(record, modifier);

  StatsRecord statsRecord = _generatePurchaseStats(productStatsChanges);

  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: statsRecord,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.updatePurchaseStatistiques,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

StatsProductChanges _recordProductsToStats(Record record, int modifier) {
  Map<String, StatsProduct> statsProducts = {};
  double profitChange = 0;
  int productCounts = 0;

  record.products.forEach((timestamp, recordProduct) {
    StatsProduct? stats = statsProducts[recordProduct.reference];
    if (stats != null) {
      stats.totalQuantity += (1 * modifier);
      stats.profit += (recordProduct.deposit * modifier);
    } else {
      stats = StatsProduct(
          reference: recordProduct.reference,
          name: recordProduct.product,
          totalQuantity: 1,
          profit: recordProduct.deposit);
      statsProducts[recordProduct.reference] = stats;
    }
    profitChange += recordProduct.deposit;
    productCounts += (1 * modifier);
  });

  return StatsProductChanges(
      statsProducts: statsProducts,
      profitChange: profitChange,
      sellerCode: record.sellerName,
      productCounts: productCounts,
      sellerName: record.sellerName,
      netProfitChange: record.totalDeposit);
}

StatsRecord _generatePurchaseStats(StatsProductChanges productStatsChanges) {
  StatsSeller sellerStat = StatsSeller(
      name: productStatsChanges.sellerName,
      code: productStatsChanges.sellerCode,
      totalSold: productStatsChanges.productCounts);

  DateTime time = Utility.getMonth();

  StatsRecord statsRecord = StatsRecord(
    date: time,
    orderRecords: {},
    sellerRecords: {sellerStat.code: sellerStat},
    purchaseRecords: productStatsChanges.statsProducts,
    totalNetProfit: productStatsChanges.netProfitChange,
    totalProfit: productStatsChanges.profitChange,
    visibility: StatsVisibility.monthly,
  );

  return statsRecord;
}

Future<void> updateOrderStatistiques(Order order) async {
  int modifier = 1;
  StatsProductChanges productStatsChanges =
      _orderProductsToStats(order, modifier);

  StatsRecord statsRecord = _generateOrderStats(productStatsChanges);

  Map<ServicesData, dynamic> requestData = {
    ServicesData.instance: statsRecord,
  };

  ServiceMessage message = ServiceMessage(
      data: requestData,
      event: DatabaseEvent.updateOrdersStatistiques,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}

StatsProductChanges _orderProductsToStats(Order order, int modifier) {
  Map<String, StatsProduct> statsProducts = {};
  double profitChange = 0;
  int productCounts = 0;

  order.products.forEach((timestamp, recordProduct) {
    StatsProduct? stats = statsProducts[recordProduct.reference];
    if (stats != null) {
      stats.totalQuantity += (1 * modifier);
      stats.profit += (recordProduct.deposit * modifier);
    } else {
      stats = StatsProduct(
          reference: recordProduct.reference,
          name: recordProduct.product,
          totalQuantity: 1,
          profit: recordProduct.deposit);
      statsProducts[recordProduct.reference] = stats;
    }
    profitChange += recordProduct.deposit;
    productCounts += (1 * modifier);
  });

  return StatsProductChanges(
      statsProducts: statsProducts,
      profitChange: profitChange,
      sellerCode: order.sellerName,
      productCounts: productCounts,
      sellerName: order.sellerName,
      netProfitChange: order.deposit);
}

StatsRecord _generateOrderStats(StatsProductChanges productStatsChanges) {
  StatsSeller sellerStat = StatsSeller(
      name: productStatsChanges.sellerName,
      code: productStatsChanges.sellerCode,
      totalSold: productStatsChanges.productCounts);

  DateTime time = Utility.getMonth();

  StatsRecord statsRecord = StatsRecord(
    date: time,
    orderRecords: {},
    sellerRecords: {sellerStat.code: sellerStat},
    purchaseRecords: productStatsChanges.statsProducts,
    totalNetProfit: productStatsChanges.netProfitChange,
    totalProfit: productStatsChanges.profitChange,
    visibility: StatsVisibility.monthly,
  );

  return statsRecord;
}
