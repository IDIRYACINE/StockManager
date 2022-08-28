
import 'package:stock_manager/Types/Database/t_wrappers.dart';

abstract class IDatabase{
  void connect(String identifier, String password);
  void disconnect();
  void insertStockProduct(List<AttributeWrapper> rawAttributes);
  void insertPurchaseRecord(List<AttributeWrapper> rawAttributes);
  void updateStockProduct(int productId ,List<AttributeWrapper> rawAttributes);
  void removeStockProduct(int productId);
  void updatePurchaseRecord(int recordId,List<AttributeWrapper> rawAttributes);
  void loadDayPurchaseRecords(LoadWrapper loadWrapper);
  void searchPurchaseRecord(SearchWrapper searchWrapper);
  void searchStockProduct(SearchWrapper searchWrapper);
}

enum Collections{
  products,
  categories,
  records,
  bestSellers,
  orders,
}

