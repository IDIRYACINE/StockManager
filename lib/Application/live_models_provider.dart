import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';

class LiveModelProvider {
  StockLiveDataModel stockLiveModel = StockLiveDataModel();
  RecordsLiveDataModel recordsLiveModel = RecordsLiveDataModel();
  SellersLiveDataModel sellersLiveModel = SellersLiveDataModel();
  OrdersLiveDataModel ordersLiveModel= OrdersLiveDataModel();
}
