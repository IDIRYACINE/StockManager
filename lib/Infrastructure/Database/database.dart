import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

class Database {
  late Db database;
  String host = "127.0.0.1";
  String port = "27017";
  String dbName = "stock_manager";

  Future<bool> connect(String identifier, String password) async {
    try {
      database = Db("mongodb://$identifier:$password@$host:$port/$dbName");
      await database.open();
      _checkIfDatabaseSchemaExists();
    } catch (e) {
      log(e.toString());
      await _createDatabase(identifier, password);
    }

    return database.isConnected;
  }

  Future<void> _createDatabase(String identifier, String password) async {
    try {
      database = await Db.create(
          "mongodb+srv://$identifier:$password@$host:$port/$dbName");
      await database.open();
      _checkIfDatabaseSchemaExists();
    } catch (e) {
      log(e.toString());
    }
  }

  void _checkIfDatabaseSchemaExists() async {
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
    database.createCollection(Collections.statestiques.name);
  }

  void createIndexes() {
    DbCollection collection = database.collection(Collections.products.name);

    collection.createIndex(keys: {
      Indexes.barcode.name: 1,
      Indexes.reference.name: 1,
    });

    collection = database.collection(Collections.productsFamily.name);
    collection.createIndex(keys: {
      Indexes.reference.name: 1,
    });

    collection = database.collection(Collections.records.name);
    collection.createIndex(keys: {
      Indexes.date.name: -1,
    });

    collection = database.collection(Collections.orders.name);
    collection.createIndex(keys: {
      Indexes.date.name: -1,
      Indexes.status.name: 1,
      Indexes.phone.name: 1,
    });
  }

  Future<void> disconnect() async {
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

  void insertOrder(JsonMap order) async {
    DbCollection collection = database.collection(Collections.orders.name);
    await collection.insert(order);
  }

  FutureMongoDbDataStream loadDayPurchaseRecords(
      SelectorBuilder selector) async {
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

  FutureMongoDbDataStream loadOrders() async {
    DbCollection collection = database.collection(Collections.orders.name);
    return collection.find();
  }

  FutureMongoDbDataStream loadPurchaseRecords(
      SelectorBuilder selectorBuilder) async {
    DbCollection collection = database.collection(Collections.records.name);
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

  void removePurchaseRecord(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.records.name);
    collection.deleteOne(selector);
  }

  void removeOrder(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.orders.name);
    collection.deleteOne(selector);
  }

  void updateProduct(
      SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection = database.collection(Collections.products.name);
    await collection.updateOne(selector, updatedValues);
  }

  void updateProductFamily(
      SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);
    await collection.updateOne(selector, updatedValues);
  }

  void updateSeller(
      SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection = database.collection(Collections.sellers.name);
    await collection.updateOne(selector, updatedValues);
  }

  void updatePurchaseRecord(
      SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection = database.collection(Collections.records.name);
    await collection.updateOne(selector, updatedValues);
  }

  void updateOrder(
      SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection = database.collection(Collections.orders.name);
    await collection.updateOne(selector, updatedValues);
  }

  FutureMongoDbDataStream searchProduct(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    return collection.find(selector);
  }

  FutureMongoDbDataStream searchProductFamily(SelectorBuilder selector) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);
    return collection.find(selector);
  }

  FutureMongoDbDataStream searchPurchaseRecord(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.records.name);
    return collection.find(selector);
  }

  FutureMongoDbDataStream searchOrder(SelectorBuilder selector) async {
    DbCollection collection = database.collection(Collections.orders.name);
    return collection.find(selector);
  }

  void updatePurchaseStatistiques(
      SelectorBuilder selector, ModifierBuilder updatedValues) async {
    DbCollection collection =
        database.collection(Collections.statestiques.name);
    await collection.update(selector, updatedValues,upsert: true);
  }

  FutureMongoDbDataStream searchPurchaseStatistiques(
      SelectorBuilder selector) async {
    DbCollection collection =
        database.collection(Collections.statestiques.name);
    return collection.find(selector);
  }
}
