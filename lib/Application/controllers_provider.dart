import 'package:flutter/material.dart';
import 'package:stock_manager/Application/deposit_controller.dart';
import 'package:stock_manager/Application/login_controller.dart';
import 'package:stock_manager/Application/records_controller.dart';
import 'package:stock_manager/Application/sales_controller.dart';
import 'package:stock_manager/Application/sellers_controller.dart';
import 'package:stock_manager/Application/splash_controller.dart';
import 'package:stock_manager/Application/stock_controller.dart';

import 'order_products_controller.dart';
import 'orders_controller.dart';

class ControllersProvider with ChangeNotifier {
  ControllersProvider() {
    loginController = LoginController();
  }

  void init(BuildContext context) {
    recordsController = RecordsController();

    salesController = SalesController();
    salesController.init(context);

    sellersController = SellersController();

    splashController = SplashController();

    stockController = StockController();

    depositController = DespositController();
    ordersController = OrdersController();
    orderProductsController = OrderProductsController();
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
