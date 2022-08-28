
import 'package:realm/realm.dart';
import 'package:stock_manager/DataModels/realm_models.dart';
import 'package:stock_manager/Types/Database/t_wrappers.dart';

abstract class IDatabase{
  void connect(String identifier, String password);
  void disconnect();

  void insertProduct(Product product);
  void insertPurchaseRecord(Record record);
  void insertProductFamily(ProductFamily productFamilys);

  void updateProduct(Product product ,List<AttributeWrapper> rawAttributes);
  void updateProductFamily(ProductFamily productFamily ,List<AttributeWrapper> rawAttributes);

  void removeProduct(Product product);
  void removeProductFamily(ProductFamily productFamily);


  RealmResults<Record> loadDayPurchaseRecords(LoadWrapper loadWrapper);
  RealmResults<Product> loadProducts(LoadWrapper loadWrapper);
  RealmResults<ProductFamily> loadProductFamillies(LoadWrapper loadWrapper);
  RealmResults<Seller> loadSellers();

  RealmResults<ProductFamily> searchProductFamily(SearchWrapper searchWrapper);
  RealmResults<Product> searchProduct(SearchWrapper searchWrapper);
  RealmResults<Record> searchPurchaseRecord(SearchWrapper searchWrapper);

  void createIndexes();

}
