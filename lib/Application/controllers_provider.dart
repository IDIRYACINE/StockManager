import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Controllers/settings_controller.dart';

import 'package:stock_manager/DataModels/LiveDataModels/settings.dart';
import 'Controllers/deposit_controller.dart';
import 'Controllers/login_controller.dart';
import 'Controllers/records_controller.dart';
import 'Controllers/order_products_controller.dart';
import 'Controllers/orders_controller.dart';
import 'Controllers/sales_controller.dart';
import 'Controllers/sellers_controller.dart';
import 'Controllers/splash_controller.dart';
import 'Controllers/stock_controller.dart';

class ControllersProvider {
  ControllersProvider() {
    loginController = LoginController();
  }

  void init(BuildContext context) {
    recordsController = RecordsController();

    salesController = SalesController();

    sellersController = SellersController();

    splashController = SplashController();

    stockController = StockController();

    depositController = DespositController( );
    ordersController = OrdersController();

    orderProductsController =
        OrderProductsController();

    settingsController = SettingsController(
        Provider.of<SettingsLiveDataModel>(context, listen: false));
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
  late SettingsController settingsController;

}
