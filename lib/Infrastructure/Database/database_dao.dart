import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

import 'database.dart';
import 'repository.dart';

class DatabaseDAO {
  final Database _database;

  DatabaseDAO(this._database);

  // crud operations

  Future<void> addOrder({required Order order}) async {
    order.products.forEach((key, product) async {
      await _updateStockQuantity(
          reference: product.reference,
          quantity: -1,
          colorId: product.colorId,
          sizeId: product.colorId);
    });

    _database.insertOrder(DatabaseRepository.orderToJson(order: order));
  }

  Future<void> insertProduct({required Product product}) async {
    _database.insertProduct(DatabaseRepository.productToJson(product: product));
  }

  Future<void> updateProduct(
      {required String reference, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();

    selector.eq(ProductFields.reference.name, reference);

    ModifierBuilder modifier = ModifierBuilder();
    AppJson<ProductModel>? models =
        updatedValues["\$set"]?[ProductFields.models.name];

    if (models != null) {
      AppJson jsonModels = {};
      models.forEach((key, value) {
        jsonModels[key] = DatabaseRepository.productModelToJson(model: value);
      });
      updatedValues["\$set"][ProductFields.models.name] = jsonModels;
    }

    modifier.map = updatedValues;

    _database.updateProduct(selector, modifier);
  }

  Future<void> deleteProduct({required Product product}) async {
    SelectorBuilder selector =
        SelectorBuilder().eq(ProductFields.name.name, product.name);
    _database.removeProduct(selector);
  }

  Future<void> insertProductFamily(
      {required ProductFamily productFamily}) async {
    _database.insertProductFamily(
        DatabaseRepository.productFamilyToJson(family: productFamily));
  }

  Future<void> updateProductFamily(
      {required ProductFamily productFamily,
      required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();

    selector.eq(ProductFamilyFields.reference.name, productFamily.reference);

    ModifierBuilder modifier = ModifierBuilder();
    modifier.map = updatedValues;
    _database.updateProductFamily(selector, modifier);
  }

  Future<void> deleteProductFamily(
      {required ProductFamily productFamily}) async {
    SelectorBuilder selector = SelectorBuilder()
        .eq(ProductFamilyFields.reference.name, productFamily.reference);
    _database.removeProductFamily(selector);
  }

  Future<void> insertRecord({required Record record}) async {
    
    record.products.forEach((key, product) async => await _updateStockQuantity(
        reference: product.reference,
        quantity: -1,
        colorId: product.colorId,
        sizeId: product.sizeId));

    _database
        .insertPurchaseRecord(DatabaseRepository.recordToJson(record: record));
  }

  Future<void> updatePurchaseRecord(
      {required Record record, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();

    selector.eq(RecordFields.timeStamp.name, record.timeStamp);

    ModifierBuilder modifier = ModifierBuilder();
    modifier.map = updatedValues;

    _database.updatePurchaseRecord(selector, modifier);
  }

  Future<void> deletePurchaseRecord({required Record record}) async {
    SelectorBuilder selector =
        SelectorBuilder().eq(RecordFields.timeStamp.name, record.timeStamp);

    record.products.forEach((key, product) async => await _updateStockQuantity(
        reference: product.reference,
        quantity: 1,
        colorId: product.colorId,
        sizeId: product.sizeId));

    _database.removePurchaseRecord(selector);
  }

  Future<void> insertSeller({required Seller seller}) async {
    _database.insertSeller(DatabaseRepository.sellerToJson(seller: seller));
  }

  Future<void> updateSeller(
      {required Seller seller, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();
    selector.eq(SellerFields.code.name, seller.sellerCode);
    ModifierBuilder modifier = ModifierBuilder();
    modifier.map = updatedValues;
    _database.updateSeller(selector, modifier);
  }

  Future<void> deleteSeller({required Seller seller}) async {
    SelectorBuilder selector =
        SelectorBuilder().eq(SellerFields.code.name, seller.sellerCode);
    _database.removeSeller(selector);
  }

  Future<void> updateOrder(
      {required Order order, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();

    selector.eq(OrderFields.timeStamp.name, order.timeStamp);

    ModifierBuilder modifier = ModifierBuilder();
    modifier.map = updatedValues;

    _database.updateOrder(selector, modifier);
  }

  Future<void> deleteOrder({required Order order}) async {
    SelectorBuilder selector = SelectorBuilder();
    selector.eq(OrderFields.timeStamp.name, order.timeStamp);

    order.products.forEach((key, product) async {
      await _updateStockQuantity(
          reference: product.reference,
          quantity: 1,
          colorId: product.colorId,
          sizeId: product.sizeId);
    });

    _database.removeOrder(selector);
  }

  // load x
  Future<List<Product>> loadProducts() async {
    List<Product> products = [];

    MongoDbDataStream data = await _database.loadProducts(SelectorBuilder());
    await await data.forEach((element) {
      products.add(DatabaseRepository.productFromJson(json: element));
    });

    return products;
  }

  Future<List<ProductFamily>> loadProductFamillies() async {
    List<ProductFamily> famillies = [];

    MongoDbDataStream data =
        await _database.loadProductFamillies(SelectorBuilder());
    await await data.forEach((element) {
      famillies.add(DatabaseRepository.productFamilyFromJson(json: element));
    });

    return famillies;
  }

  Future<List<Record>> loadPurchaseRecord() async {
    List<Record> records = [];

    MongoDbDataStream data =
        await _database.loadPurchaseRecords(SelectorBuilder());
    await await data.forEach((element) {
      records.add(DatabaseRepository.recordFromJson(json: element));
    });

    return records;
  }

  Future<List<Record>> loadDayPurchaseRecords() async {
    SelectorBuilder selector = SelectorBuilder();

    DateTime dateTime = DateTime.now();
    String today = '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    selector.eq(RecordFields.date.name, today);

    List<Record> records = [];

    MongoDbDataStream data = await _database.loadPurchaseRecords(selector);
    await await data.forEach((element) {
      records.add(DatabaseRepository.recordFromJson(json: element));
    });

    return records;
  }

  Future<List<Seller>> loadSellers() async {
    List<Seller> sellers = [];

    MongoDbDataStream data = await _database.loadSellers();
    await await data.forEach((element) {
      sellers.add(DatabaseRepository.sellerFromJson(json: element));
    });

    return sellers;
  }

  // search x

  Future<List<ProductFamily>> searchProductFamily(
      {required AppJson search}) async {
    SelectorBuilder selector = SelectorBuilder();
    selector.map = search;
    MongoDbDataStream data = await _database.searchProductFamily(selector);
    List<ProductFamily> family = [];

    await data.forEach((element) {
      family.add(DatabaseRepository.productFamilyFromJson(json: element));
    });

    return family;
  }

  Future<List<Product>> searchProduct({required AppJson search}) async {
    List<Product> products = [];

    SelectorBuilder selector = SelectorBuilder();
    selector.map = search;
    MongoDbDataStream data = await _database.searchProduct(selector);

    await await data.forEach((element) {
      products.add(DatabaseRepository.productFromJson(json: element));
    });

    return products;
  }

  Future<List<Record>> searchRecord({required AppJson search}) async {
    List<Record> records = [];

    SelectorBuilder selector = SelectorBuilder();
    selector.map = search;
    MongoDbDataStream data = await _database.searchPurchaseRecord(selector);
    await await data.forEach((element) {
      records.add(DatabaseRepository.recordFromJson(json: element));
    });

    return records;
  }

  Future<List<Order>> searchOrders({required AppJson search}) async {
    List<Order> orders = [];

    SelectorBuilder selector = SelectorBuilder();

    selector.map = search;
    MongoDbDataStream data = await _database.searchOrder(selector);

    await data.forEach((element) {
      orders.add(DatabaseRepository.orderFromJson(json: element));
    });

    return orders;
  }

  Future<void> _updateStockQuantity(
      {required String reference,
      required int quantity,
      required String colorId,
      required String sizeId}) async {
    SelectorBuilder orderProductSelector = SelectorBuilder();
    orderProductSelector.eq(ProductFields.reference.name, reference);

    String modifyModelQuantitySelector =
        '${ProductFields.models.name}.$colorId.${ProductFields.size.name}.$sizeId.${ProductFields.quantity.name}';

    ModifierBuilder orderProductModifier = ModifierBuilder()
        .inc(ProductFields.quantity.name, quantity)
        .inc(modifyModelQuantitySelector, quantity);

    _database.updateProduct(orderProductSelector, orderProductModifier);
  }

  Future<void> addOrderProduct(
      {required RecordProduct orderProduct,
      required AppJson<dynamic> selector}) async {
    SelectorBuilder selectorBuilder = SelectorBuilder();
    selectorBuilder.map = selector;

    ModifierBuilder updatedValues = ModifierBuilder().set(
        '${OrderFields.products.name}.${orderProduct.timeStamp}',
        DatabaseRepository.orderProductToJson(product: orderProduct));

    _updateStockQuantity(
        reference: orderProduct.reference,
        quantity: -1,
        colorId: orderProduct.colorId,
        sizeId: orderProduct.sizeId);

    _database.updateOrder(selectorBuilder, updatedValues);
  }

  Future<void> deleteOrderProduct(
      {required AppJson<dynamic> selector,
      required RecordProduct orderProduct}) async {
    SelectorBuilder selectorBuilder = SelectorBuilder();
    selectorBuilder.map = selector;

    ModifierBuilder updatedValues = ModifierBuilder()
        .unset('${OrderFields.products.name}.${orderProduct.timeStamp}');

    _updateStockQuantity(
        reference: orderProduct.reference,
        quantity: 1,
        colorId: orderProduct.colorId,
        sizeId: orderProduct.sizeId);

    _database.updateOrder(selectorBuilder, updatedValues);
  }


  deletePurchaseRecordProduct({required RecordProduct product, required AppJson selector}) {
     SelectorBuilder selectorBuilder = SelectorBuilder();
    selectorBuilder.map = selector;

    ModifierBuilder updatedValues = ModifierBuilder()
        .unset('${RecordFields.products.name}.${product.timeStamp}');

    _updateStockQuantity(
        reference: product.reference,
        quantity: 1,
        colorId: product.colorId,
        sizeId: product.sizeId);

    _database.updatePurchaseRecord(selectorBuilder, updatedValues);
  }

  Future<void> insertRemainingRecord({required Record record}) async {
    _database
        .insertPurchaseRecord(DatabaseRepository.recordToJson(record: record));
  }

}
