import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/live_models_provider.dart';

import 'Controllers/deposit_controller.dart';
import 'Controllers/login_controller.dart';
import 'Controllers/records_controller.dart';
import 'Controllers/order_products_controller.dart';
import 'Controllers/orders_controller.dart';
import 'Controllers/sales_controller.dart';
import 'Controllers/sellers_controller.dart';
import 'Controllers/splash_controller.dart';
import 'Controllers/stock_controller.dart';

class ControllersProvider with ChangeNotifier {
  ControllersProvider() {
    loginController = LoginController();
  }

  void init(BuildContext context) {
    LiveModelProvider liveModelsProvider =
        Provider.of<LiveModelProvider>(context, listen: false);

    recordsController = RecordsController(liveModelsProvider.recordsLiveModel);

    salesController = SalesController(
        liveModelsProvider.recordsLiveModel, liveModelsProvider.stockLiveModel);

    sellersController = SellersController(liveModelsProvider.sellersLiveModel);

    splashController = SplashController();

    stockController = StockController(liveModelsProvider.stockLiveModel);

    depositController = DespositController(
        liveModelsProvider.recordsLiveModel, liveModelsProvider.stockLiveModel);
    ordersController = OrdersController(liveModelsProvider.ordersLiveModel);
    orderProductsController = OrderProductsController(
        liveModelsProvider.stockLiveModel, liveModelsProvider.ordersLiveModel);
  }

  late LoginController loginController;
  late RecordsController recordsController;
  late SalesController salesController;
  late SplashController splashController;
  late StockController stockController;
  late SellersController sellersController;
  late DespositController depositController;
  late OrdersController ordersController;
  late OrderProductsController orderProductsController;
}
