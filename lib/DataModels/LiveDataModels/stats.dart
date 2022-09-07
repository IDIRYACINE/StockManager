
import 'package:stock_manager/DataModels/models_stats.dart';

class StatsLiveDataModel{

  final Map<int,StatsCity> cityStats = {};
  final Map<int,StatsSeller> sellerStats = {};
  final Map<int,StatsProduct> productStats = {};

  final List<StatsProduct> topProducts = [];
  final List<StatsCity> toStates = [];
  final List<StatsSeller> topSellers = [];

  StatsCity state(int postalCOde) {
    return cityStats[postalCOde]!;
  }

  StatsCity stateAt(int index) {
    return cityStats.values.elementAt(index);
  }

  StatsProduct topProductAt(int index) {
    return topProducts[index];
  }
  
}