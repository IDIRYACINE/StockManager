
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

enum Tables{
  stock,
  purchaseRecords,
  dailyPurchaseRecords,
}

enum StockTableColumns{
  barcode,
  name,
  minSellingPrice,
  fixedSellingPrice,
  buyingPrice,
  stockQuantity,
  imageUrl,
}

extension StockTableAttributes on StockTableColumns {
  String get attribute{
    switch(this){
      case StockTableColumns.barcode:
        return 'Integer Primary Key';
      case StockTableColumns.name:
        return 'VarChar(50)';
      case StockTableColumns.minSellingPrice:
        return 'Real';
      case StockTableColumns.fixedSellingPrice:
        return 'Real';
      case StockTableColumns.buyingPrice:
        return 'Real';
      case StockTableColumns.stockQuantity:
        return 'Integer';
      case StockTableColumns.imageUrl:
        return 'Text';
    }
  }
}

enum PurchaseRecordsTableColumns{
  id,
  session,
  barcode,
  name,
  deposit,
  buyingPrice,
  sellingPrice,
  date,
  customerPhone
}

extension PurchaseRecordsTableAttributes on PurchaseRecordsTableColumns{
  String get attribute {
    switch(this){
      case PurchaseRecordsTableColumns.id:
        return 'Integer Primary Key Autoincrement';
      case PurchaseRecordsTableColumns.session:
        return 'Integer';
      case PurchaseRecordsTableColumns.barcode:
        return 'Integer';
      case PurchaseRecordsTableColumns.name:
        return 'VarChar(50)';
      case PurchaseRecordsTableColumns.deposit:
        return 'Real';
      case PurchaseRecordsTableColumns.buyingPrice:
        return 'Real';
      case PurchaseRecordsTableColumns.sellingPrice:
        return 'Real';
      case PurchaseRecordsTableColumns.date:
        return 'Date';
      case PurchaseRecordsTableColumns.customerPhone:
        return 'Integer';
    }
  }
}

enum CustomerTableColumns{
  phone,
  name,
}

extension CustomerTableAttributes on CustomerTableColumns{
  String get attribute {
    switch(this){
      case CustomerTableColumns.phone:
        return 'Integer Primary Key';
      case CustomerTableColumns.name:
        return 'Varchar(50)';
    }
  }
}