
import 'package:realm/realm.dart';
import 'package:stock_manager/DataModels/realm_models.dart';
import 'package:stock_manager/Types/Database/i_databse.dart';
import 'package:stock_manager/Types/Database/t_wrappers.dart';

class Database implements IDatabase{
  
  late Realm recordsRealm;
  late Realm productsRealm;
  late Realm productFamiliesRealm;
  late Realm sellersRealm;

  @override
  void connect(String identifier, String password) {
    recordsRealm = Realm(Configuration.local([Record.schema]));
    productsRealm = Realm(Configuration.local([Product.schema]));
    productFamiliesRealm = Realm(Configuration.local([ProductFamily.schema]));
    sellersRealm = Realm(Configuration.local([Seller.schema]));
  }

  @override
  void createIndexes() {
    
  }

  @override
  void disconnect() {
    productFamiliesRealm.close();
    productsRealm.close();
    sellersRealm.close();
    recordsRealm.close();
    Realm.shutdown();
  }

  @override
  void insertProduct(Product product) {
    productsRealm.write(() => {
      productsRealm.add(product)
    });
  }

  @override
  void insertProductFamily(ProductFamily productFamily) {
    productFamiliesRealm.write(() => {
      productFamiliesRealm.add(productFamily)
    });
  }

  @override
  void insertPurchaseRecord(Record record) {
    recordsRealm.write(() => {
      recordsRealm.add(record)
    });
  }

  @override
  RealmResults<Record> loadDayPurchaseRecords(LoadWrapper loadWrapper) {
    RealmResults<Record> records = recordsRealm.all<Record>();
    return records;
  }

  @override
  RealmResults<ProductFamily> loadProductFamillies(LoadWrapper loadWrapper) {
    RealmResults<ProductFamily> famillies = productFamiliesRealm.all<ProductFamily>();
    return famillies;
  }

  @override
  RealmResults<Product> loadProducts(LoadWrapper loadWrapper) {
    RealmResults<Product> products = productsRealm.all<Product>();
    return products;
  }


  @override
  RealmResults<Seller> loadSellers() {
    RealmResults<Seller> sellers = sellersRealm.all<Seller>();
    return sellers;
  }

  @override
  void removeProduct(Product product) {
    productsRealm.delete(product);
  }

  @override
  void removeProductFamily(ProductFamily productFamily) {
    productFamiliesRealm.delete(productFamily);
  }

  @override
  RealmResults<Product> searchProduct(SearchWrapper searchWrapper) {
    RealmResults<Product> products = productsRealm.all<Product>().query("make == 'Tesla'");
    return products;
  }

  @override
  RealmResults<ProductFamily> searchProductFamily(SearchWrapper searchWrapper) {
    RealmResults<ProductFamily> famillies = productFamiliesRealm.all<ProductFamily>();
    return famillies;
  }

  @override
  RealmResults<Record> searchPurchaseRecord(SearchWrapper searchWrapper) {
    RealmResults<Record> records = recordsRealm.all<Record>();
    return records;
  }

  @override
  void updateProduct(Product product, List<AttributeWrapper> rawAttributes) {
    productsRealm.write(() {});
  }

  @override
  void updateProductFamily(ProductFamily productFamily, List<AttributeWrapper> rawAttributes) {
    productFamiliesRealm.write(() {});
  }
  

}