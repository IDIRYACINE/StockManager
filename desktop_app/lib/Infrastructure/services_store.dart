import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/RegionService/region_service.dart';
import 'package:stock_manager/Infrastructure/SellersService/service.dart';
import 'package:stock_manager/Infrastructure/StockService/service.dart';
import 'package:stock_manager/Infrastructure/TransactionService/service.dart';
import 'package:stock_manager/Infrastructure/services.dart';

import 'AuthService/service.dart';

export 'RegionService/region_service.dart';
export 'SellersService/service.dart';
export 'StockService/service.dart';
export 'TransactionService/service.dart';


class ServicesGateway extends ServiceStore {
  static ServicesGateway? _instance;

  ServicesGateway._(super.searchAlgorithm);

  factory ServicesGateway.instance() {
    if (_instance == null) {
      final searchAlgorithm = _searchAlgorithm();
      _instance = ServicesGateway._(searchAlgorithm);
      _registerBaseServices(_instance!);
    }
    return _instance!;
  }

  static BinarySearchAlgorithm<Service, int> _searchAlgorithm() {
    return BinarySearchAlgorithm(
      BinarySearchComparator(
        isGreaterThan: (Service service, int id) => service.serviceId > id,
        isLessThan: (Service service, int id) => service.serviceId < id,
      ),
    );
  }

  static void _registerBaseServices(ServicesGateway gateway) {
    gateway.initServices(Services.values.length);


    final sellersService = SellersService.instance();
    gateway.registerServiceAtIndex(sellersService);

    final stockService = StockService.instance();
    gateway.registerServiceAtIndex(stockService);

    final transactionService = TransactionsService.instance();
    gateway.registerServiceAtIndex(transactionService);

    final regionService = RegionService.instance();
    gateway.registerServiceAtIndex(regionService);

    final authService = AuthService.instance();
    gateway.registerServiceAtIndex(authService);

  }

  
}
