
import 'package:flutter/foundation.dart';
import 'package:stock_manager/Application/deposit_controller.dart';
import 'package:stock_manager/Application/login_controller.dart';
import 'package:stock_manager/Application/records_controller.dart';
import 'package:stock_manager/Application/sales_controller.dart';
import 'package:stock_manager/Application/sellers_controller.dart';
import 'package:stock_manager/Application/splash_controller.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';

class ControllersProvider with ChangeNotifier {

  ControllersProvider(){
    _database = Database();

    loginController = LoginController(_database);
  }

  void init(){
    recordsController = RecordsController();
    salesController = SalesController();
    sellersController = SellersController();
    splashController = SplashController();
    stockController = StockController();
    depositController = DespositController();
  }

  late LoginController loginController;
  late RecordsController recordsController;
  late SalesController salesController;
  late SplashController splashController;
  late StockController stockController;
  late SellersController sellersController;
  late DespositController depositController;

  late Database _database;

}