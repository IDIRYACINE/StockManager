import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/Database/i_database.dart';

class Database {
  late Db database;
  String host = "127.0.0.1";
  String port = "27017";
  String dbName = "stock_manager";

  Future<void> connect(String identifier, String password) async {
    try {
      database = Db("mongodb://$identifier:$password@$host:$port/$dbName");
      await database.open();
    } catch (e) {
      log(e.toString());
      _createDatabase(identifier, password);
    }
  }

  Future<void> _createDatabase(String identifier,String password) async {
    try{
      database = await Db.create(
          "mongodb+srv://$identifier:$password@$host:$port/$dbName");    
      await database.open();
      createIndexes();
    }catch(e){
      log(e.toString());
    }
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

  MongoDbDataStream loadDayPurchaseRecords(JsonMap selector) async {
    DbCollection collection = database.collection(Collections.records.name);
    return collection.find(selector);
  }

  MongoDbDataStream loadProductFamillies(JsonMap selector) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);
    return collection.find();
  }

  MongoDbDataStream loadProducts(JsonMap selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    return collection.find();
  }

  MongoDbDataStream loadSellers() async {
    DbCollection collection = database.collection(Collections.sellers.name);
    return collection.find();
  }

  void removeProduct(JsonMap selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    collection.deleteOne(selector);
  }

  void removeProductFamily(JsonMap selector) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);
    collection.deleteOne(selector);
  }

  MongoDbDataStream searchProduct(JsonMap selector) async {
    DbCollection collection = database.collection(Collections.products.name);
    return collection.find(selector);
  }

  MongoDbDataStream searchProductFamily(JsonMap selector) async {
    DbCollection collection = database.collection(Collections.sellers.name);
    return collection.find(selector);
  }

  MongoDbDataStream searchPurchaseRecord(JsonMap selector) async {
    DbCollection collection = database.collection(Collections.records.name);
    return collection.find(selector);
  }

  void updateProduct(
      JsonMap selector, JsonMap updatedValues) async {
    DbCollection collection = database.collection(Collections.products.name);
    await collection.updateOne(
        selector, updatedValues);

  }

  void updateProductFamily(
      JsonMap selector, JsonMap updatedValues) async {
    DbCollection collection =
        database.collection(Collections.productsFamily.name);

    await collection.updateOne(
        selector, updatedValues);
  }

  void updateSeller(JsonMap selector,JsonMap updatedValues) async {
     DbCollection collection =
        database.collection(Collections.sellers.name);

    await collection.updateOne(
        selector, updatedValues);
  }
}
