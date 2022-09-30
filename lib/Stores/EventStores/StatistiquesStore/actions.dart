import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stats.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/special_enums.dart';

class SearchStatistiques implements StoreAction {
  final StatsLiveDataModel statsLiveModel;

  SearchStatistiques(this.statsLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event) async {
    Map<String, dynamic> query = event.data as Map<String, dynamic>;

    void _onResult(List<StatsRecord> records) {
      statsLiveModel.setAllStats(records);
    }

    Map<ServicesData, dynamic> requestData = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<StatsRecord>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseStatistiques,
        data: requestData,
        hasCallback: true,
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
    return null;
  }

  @override
  int getId() {
    return StatistiquesEvents.searchStatistiques.index;
  }

  @override
  String getName() {
    return StatistiquesEvents.searchStatistiques.name;
  }
}

class UpdatePurchaseStatistiques implements StoreReaction {
  final StatsLiveDataModel statsLiveModel;

  UpdatePurchaseStatistiques(this.statsLiveModel);

  @override
  Future<void> execute(EventResponse? response) async {
    Record record = response!.data as Record;

    int modifier = _isAddOrRemoveEvent(response.event);
    StatsProductChanges productStatsChanges =
        _recordProductsToStats(record, modifier);

    statsLiveModel.updatePurchaseStats(productStatsChanges);

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

  int _isAddOrRemoveEvent(String event) {
    int modifier = 1;
    if (event.contains("remove")) {
      modifier = -1;
    }
    return modifier;
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

  @override
  int getId() {
    return StatistiquesReactions.updatePurchaseStatistiques.index;
  }

  @override
  String getName() {
    return StatistiquesReactions.updatePurchaseStatistiques.name;
  }
}

class UpdateOrderStatistiques implements StoreReaction {
  final StatsLiveDataModel statsLiveModel;

  UpdateOrderStatistiques(this.statsLiveModel);

  @override
  Future<void> execute(EventResponse? response) async {
    Order order = response!.data as Order;

    int modifier = _isAddOrRemoveEvent(response.event);
    StatsProductChanges productStatsChanges =
        _orderProductsToStats(order, modifier);

    statsLiveModel.updateOrderStats(productStatsChanges);

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

  @override
  int getId() {
    return StatistiquesReactions.updateOrderStatistiques.index;
  }

  @override
  String getName() {
    return StatistiquesReactions.updateOrderStatistiques.name;
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

  int _isAddOrRemoveEvent(String event) {
    int modifier = 1;
    if (event.contains("remove")) {
      modifier = -1;
    }
    return modifier;
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
}
