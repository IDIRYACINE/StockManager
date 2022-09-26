import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';

class StatsLiveDataModel {
  final Map<String, StatsCity> cityStats = {};
  final Map<String, StatsSeller> sellerStats = {};
  final Map<String, StatsProduct> productStats = {};

  final List<StatsProduct> topProducts = [];
  final List<StatsCity> toStates = [];
  final List<StatsSeller> topSellers = [];

  final ValueNotifier<double> _totalProfit = ValueNotifier(0);
  ValueListenable<double> get totalProfit => _totalProfit;

  StatsCity state(int postalCode) {
    return cityStats[postalCode]!;
  }

  StatsCity stateAt(int index) {
    return cityStats.values.elementAt(index);
  }

  StatsProduct topProductAt(int index) {
    return topProducts[index];
  }

  void updatePurchaseStats(StatsProductChanges statChanges) {
    _updateProductStats(statChanges);
    _updateSellerStats(statChanges);
  }

  void _updateProductStats(StatsProductChanges statChanges) {
    statChanges.statsProducts.forEach((reference, stat) {
      StatsProduct? currentState = productStats[reference];
      if (currentState != null) {
        currentState.totalQuantity += stat.totalQuantity;
        currentState.profit += stat.profit;
      } else {
        productStats[reference] = stat;
      }
    });

    _totalProfit.value += statChanges.profitChange;
  }

  void _updateSellerStats(StatsProductChanges statChanges) {
    StatsSeller? currentState = sellerStats[statChanges.sellerCode];
    if (currentState != null) {
      currentState.totalSold += statChanges.productCounts;
    } else {
      sellerStats[statChanges.sellerCode] = StatsSeller(
        sellerCode: statChanges.sellerCode,
        totalSold : statChanges.productCounts,
        name: statChanges.sellerName,
      );
    }
  }

  void updateOrderStats(StatsProductChanges productStatsChanges) {}
}
