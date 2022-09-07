import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stats.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';

class LiveModelProvider {
  final StockLiveDataModel stockLiveModel = StockLiveDataModel();
  final RecordsLiveDataModel recordsLiveModel = RecordsLiveDataModel();
  final SellersLiveDataModel sellersLiveModel = SellersLiveDataModel();
  final OrdersLiveDataModel ordersLiveModel= OrdersLiveDataModel();
  final StatsLiveDataModel statsLiveModel = StatsLiveDataModel();
}
