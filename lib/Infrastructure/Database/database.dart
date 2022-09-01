import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

class Database {
  late Db database;
  String host = "127.0.0.1";
  String port = "27017";
  String dbName = "stock_manager";

  Future<void> connect(String identifier, String password) async {
    try {
      database = Db("mongodb://$identifier:$password@$host:$port/$dbName");
      await database.open();
      _checkIfDatabaseSchemaCreate();
    } catch (e) {
      log(e.toString());
      _createDatabase(identifier, password);
    }
  }

  Future<void> _createDatabase(String identifier, String password) async {
    try {
      database = await Db.create(
          "mongodb+srv://$identifier:$password@$host:$port/$dbName");
      await database.open();
      _checkIfDatabaseSchemaCreate();
    } catch (e) {
      log(e.toString());
    }
  }

  void _checkIfDatabaseSchemaCreate() async {
    List<String?> collections = await database.getCollectionNames();
    if (collections.isEmpty) {
      createCollections();
      createIndexes();
    }
  }

  void createCollections() async {
    database.createCollection(Collections.products.name);
    database.createCollection(Collections.productsFamily.name);
    database.createCollection(Collections.records.name);
    database.createCollection(Collections.sellers.name);
    database.createCollection(Collections.orders.name);
  }

  void createIndexes() {
    DbCollection collection = database.collection(Collections.products.name);

    collection.createIndex(keys: {
      Indexes.barcode.name: 1,
    });

    collection = database.collection(Collections.productsFamily.name);
    collection.createIndex(keys: {
      Indexes.reference.name: 1,
    });

    collection = database.collection(Collections.records.name);
    collection.createIndex(keys: {
      Indexes.date.name: -1,
    });
  }

  void disconnect() async {
    database.close();
  }

  void insertProduct(JsonMap product) async {
    await database.collection(Collections.products.name).insert(product);
  }

  void insertProductFamily(JsonMap productFamily) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);

    await collection.insert(productFamily);
  }

  void insertPurchaseRecord(JsonMap record) async {
    DbCollection collection = database.collection(Collections.records.name);

    await collection.insert(record);
  }

  void insertSeller(JsonMap seller) async {
    DbCollection collection = database.collection(Collections.sellers.name);

    await collection.insert(seller);
  }

  FutureMongoDbDataStream loadDayPurchaseRecords(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.records.name);
    return collection.find(selector);
  }

  FutureMongoDbDataStream loadProductFamillies(SelectorBuilder selector) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);
    return collection.find();
  }

  FutureMongoDbDataStream loadProducts(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    return collection.find();
  }

  FutureMongoDbDataStream loadSellers() async {
    DbCollection collection = database.collection(Collections.sellers.name);
    return collection.find();
  }

  void removeProduct(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    collection.deleteOne(selector);
  }

  void removeProductFamily(SelectorBuilder selector) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);
    collection.deleteOne(selector);
  }

  void removeSeller(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.sellers.name);
    collection.deleteOne(selector);
  }

  FutureMongoDbDataStream searchProduct(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    return collection.find(selector);
  }

  FutureMongoDbDataStream searchProductFamily(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.sellers.name);
    return collection.find(selector);
  }

  FutureMongoDbDataStream searchPurchaseRecord(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.records.name);
    return collection.find(selector);
  }

  void updateProduct(SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection = database.collection(Collections.products.name);
    await collection.updateOne(selector, updatedValues);
  }

  void updateProductFamily(SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);

    await collection.updateOne(selector, updatedValues);
  }

  void updateSeller(SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection = database.collection(Collections.sellers.name);

    await collection.updateOne(selector, updatedValues);
  }
}
