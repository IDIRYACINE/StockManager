import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

Future<void> searchStatistiques(AppJson query) async {
 
}

Future<void> updatePurchaseStatistiques(Record record) async {
  
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


Future<void> updateOrderStatistiques(Order order) async {
  
}
