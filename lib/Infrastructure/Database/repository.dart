import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DatabaseRepository {
  DatabaseRepository(this._database);

  final Database _database;

  // crud operations

  Future<void> addOrder({required Order order}) async {
    _database.insertOrder(orderToJson(order: order));
  }

  Future<void> insertProduct({required Product product}) async {
    _database.insertProduct(productToJson(product: product));
  }

  Future<void> updateProduct(
      {required Product product, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();

    selector.eq(ProductFields.reference.name, product.reference);

    ModifierBuilder modifier = ModifierBuilder();
    List<ProductModel>? models =
        updatedValues["\$set"][ProductFields.models.name];

    if (models != null) {
      List<AppJson> jsonModels = [];
      for (ProductModel model in models) {
        jsonModels.add(_productModelToJson(model: model));
      }
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
    _database.insertProductFamily(productFamilyToJson(family: productFamily));
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
    _database.insertPurchaseRecord(recordToJson(record: record));
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
    _database.removePurchaseRecord(selector);
  }

  Future<void> insertSeller({required Seller seller}) async {
    _database.insertSeller(sellerToJson(seller: seller));
  }

  Future<void> updateSeller(
      {required Seller seller, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();
    selector.eq(SellerFields.phone.name, seller.phone);
    ModifierBuilder modifier = ModifierBuilder();
    modifier.map = updatedValues;
    _database.updateSeller(selector, modifier);
  }

  Future<void> deleteSeller({required Seller seller}) async {
    SelectorBuilder selector =
        SelectorBuilder().eq(SellerFields.name.name, seller.name);
    _database.removeSeller(selector);
  }

  Future<void> updateOrder(
      {required Order order, required AppJson updatedValues}) async {
    SelectorBuilder selector = SelectorBuilder();

    selector.eq(OrderFields.timeStamp.name, order.timeStamp);

    ModifierBuilder modifier = ModifierBuilder();
    modifier.map = updatedValues;
    _database.updateSeller(selector, modifier);
  }

  deleteOrder({required order}) {}

  // load x
  Future<List<Product>> loadProducts() async {
    List<Product> products = [];

    MongoDbDataStream data = await _database.loadProducts(SelectorBuilder());
    await await data.forEach((element) {
      products.add(productFromJson(json: element));
    });

    return products;
  }

  Future<List<ProductFamily>> loadProductFamillies() async {
    List<ProductFamily> famillies = [];

    MongoDbDataStream data =
        await _database.loadProductFamillies(SelectorBuilder());
    await await data.forEach((element) {
      famillies.add(productFamilyFromJson(json: element));
    });

    return famillies;
  }

  Future<List<Record>> loadPurchaseRecord() async {
    List<Record> records = [];

    MongoDbDataStream data =
        await _database.loadPurchaseRecords(SelectorBuilder());
    await await data.forEach((element) {
      records.add(recordFromJson(json: element));
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
      records.add(recordFromJson(json: element));
    });

    return records;
  }

  Future<List<Seller>> loadSellers() async {
    List<Seller> sellers = [];

    MongoDbDataStream data = await _database.loadSellers();
    await await data.forEach((element) {
      sellers.add(sellerFromJson(json: element));
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
      family.add(productFamilyFromJson(json: element));
    });

    return family;
  }

  Future<List<Product>> searchProduct({required AppJson search}) async {
    List<Product> products = [];

    SelectorBuilder selector = SelectorBuilder();
    selector.map = search;
    MongoDbDataStream data = await _database.searchProduct(selector);

    await await data.forEach((element) {
      products.add(productFromJson(json: element));
    });

    return products;
  }

  Future<List<Record>> searchRecord({required AppJson search}) async {
    List<Record> records = [];

    SelectorBuilder selector = SelectorBuilder();
    selector.map = search;
    MongoDbDataStream data = await _database.searchPurchaseRecord(selector);

    await await data.forEach((element) {
      records.add(recordFromJson(json: element));
    });

    return records;
  }

  Future<List<Order>> searchOrders({required AppJson search}) async {
    List<Order> orders = [];

    SelectorBuilder selector = SelectorBuilder();
    selector.map = search;
    MongoDbDataStream data = await _database.searchOrder(selector);

    await data.forEach((element) {
      orders.add(orderFromJson(json: element));
    });

    return orders;
  }

  // x from json

  ProductFamily productFamilyFromJson({required AppJson<dynamic> json}) {
    return ProductFamily(
      name: json[ProductFamilyFields.name.name] ?? Labels.error,
      reference: json[ProductFamilyFields.reference.name] ?? Labels.error,
      imageUrl: json[ProductFamilyFields.imageUrl.name] ?? Labels.error,
    );
  }

  ProductModel _productModelFromJson({required AppJson json}) {
    return ProductModel(
      color: json[ProductModelFields.color.name] ?? Labels.error,
      size: json[ProductModelFields.size.name] ?? Labels.error,
      quantity: json[ProductModelFields.quantity.name] ?? Labels.error,
    );
  }

  Product productFromJson({required AppJson<dynamic> json}) {
    List<ProductModel> models = [];
    List<dynamic>? rawModels = json[ProductFields.models.name];

    ProductModel model;

    if (rawModels != null) {
      for (var element in rawModels) {
        model = _productModelFromJson(json: element);
        models.add(model);
      }
    }

    return Product(
      barcode: json[ProductFields.barcode.name] ?? Labels.error,
      name: json[ProductFields.name.name] ?? Labels.error,
      productFamily: json[ProductFields.family.name] ?? Labels.error,
      imageUrl: json[ProductFields.imageUrl.name] ?? Labels.error,
      originalPrice: json[ProductFields.buyingPrice.name] ?? Labels.error,
      reference: json[ProductFields.reference.name] ?? Labels.error,
      sellingPrice: json[ProductFields.sellingPrice.name] ?? Labels.error,
      models: models,
      totalQuantity: json[ProductFields.quantity.name] ?? Labels.error,
    );
  }

  Record recordFromJson({required AppJson<dynamic> json}) {
    String payementType = json[RecordFields.paymentType.name] ?? Labels.error;
    Record record = Record(
      payementType: payementType,
      sellerName: json[RecordFields.seller.name] ?? Labels.error,
      timeStamp: json[RecordFields.timeStamp.name] ?? Labels.error,
      product: json[RecordFields.product.name] ?? Labels.error,
      productColor: json[RecordFields.productColor.name] ?? Labels.error,
      productSize: json[RecordFields.productSize.name] ?? Labels.error,
      barcode: json[RecordFields.barcode.name] ?? Labels.error,
      reference: json[RecordFields.reference.name] ?? Labels.error,
      customer: json[RecordFields.customer.name] ?? Labels.error,
      quantity: json[RecordFields.quantity.name] ?? -1,
      originalPrice: json[RecordFields.buyingPrice.name] ?? -1,
      sellingPrice: json[RecordFields.sellingPrice.name] ?? -1,
      date: json[RecordFields.date.name] ?? '1990-1-1',
    );

    if (payementType == PaymentTypes.deposit.name) {
      record.deposit = json[RecordFields.deposit.name] ?? Labels.error;
      record.remainingPayement = json[RecordFields.remainingPayement.name] ?? 0;
    }

    return record;
  }

  Seller sellerFromJson({required AppJson<dynamic> json}) {
    return Seller(
      name: json[SellerFields.name.name] ?? Labels.error,
      imageUrl: json[SellerFields.imageUrl.name] ?? Labels.error,
      phone: json[SellerFields.phone.name] ?? 0,
    );
  }

  OrderProduct orderProductFromJson({required AppJson<dynamic> json}) {
    return OrderProduct(
      reference: json[ProductFields.reference.name] ?? Labels.error,
      sellingPrice: json[ProductFields.sellingPrice.name] ?? -1,
      product: json[ProductFields.name.name] ?? Labels.error,
      productColor: json[ProductModelFields.color.name] ?? Labels.error,
      productSize: json[ProductModelFields.size.name] ?? Labels.error,
    );
  }

  Order orderFromJson({required AppJson<dynamic> json}) {
    List<OrderProduct> products = [];

    List<dynamic>? rawProducts = json[OrderFields.products.name];

    OrderProduct product;

    if (rawProducts != null) {
      for (var element in rawProducts) {
        product = orderProductFromJson(json: element);
        products.add(product);
      }
    }

    return Order(
      products: products,
      address: json[OrderFields.address.name] ?? Labels.error,
      city: json[OrderFields.city.name] ?? Labels.error,
      date: json[OrderFields.date.name] ?? Labels.error,
      deliverToHome: json[OrderFields.deliverToHome.name] ?? false,
      deposit: json[OrderFields.deposit.name] ?? -1,
      status: json[OrderFields.status.name] ?? Labels.error,
      sellingPrice: json[OrderFields.sellingPrice.name] ?? -1,
      customerName: json[OrderFields.customerName.name] ?? Labels.error,
      deliveryCost: json[OrderFields.deliveryCost.name] ?? -1,
      phoneNumber: json[OrderFields.phone.name] ?? -1,
      postalCode: json[OrderFields.postalCode.name] ?? -1,
      quantity: json[OrderFields.quantity.name] ?? -1,
      sellerName: json[OrderFields.seller.name] ?? Labels.error,
      timeStamp: json[OrderFields.timeStamp.name] ?? -1,
    );
  }

  // x to json

  AppJson<dynamic> productFamilyToJson({required ProductFamily family}) {
    AppJson<dynamic> json = {};

    json[ProductFamilyFields.name.name] = family.name;
    json[ProductFamilyFields.reference.name] = family.reference;
    json[ProductFamilyFields.imageUrl.name] = family.imageUrl;

    return json;
  }

  AppJson<dynamic> productToJson({required Product product}) {
    AppJson<dynamic> json = {};

    List<AppJson<dynamic>> models = [];

    for (ProductModel model in product.models) {
      models.add(_productModelToJson(model: model));
    }

    json[ProductFields.barcode.name] = product.barcode;
    json[ProductFields.name.name] = product.name;
    json[ProductFields.family.name] = product.productFamily;
    json[ProductFields.imageUrl.name] = product.imageUrl;
    json[ProductFields.buyingPrice.name] = product.originalPrice;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductFields.models.name] = models;
    json[ProductFields.quantity.name] = product.totalQuantity;

    return json;
  }

  AppJson<dynamic> _productModelToJson({required ProductModel model}) {
    AppJson<dynamic> json = {};

    json[ProductModelFields.color.name] = model.color;
    json[ProductModelFields.size.name] = model.size;
    json[ProductModelFields.quantity.name] = model.quantity;

    return json;
  }

  AppJson<dynamic> sellerToJson({required Seller seller}) {
    AppJson<dynamic> json = {};

    json[SellerFields.name.name] = seller.name;
    json[SellerFields.imageUrl.name] = seller.imageUrl;
    json[SellerFields.phone.name] = seller.phone;
    return json;
  }

  AppJson<dynamic> recordToJson({required Record record}) {
    AppJson<dynamic> json = {};
    json[RecordFields.paymentType.name] = record.payementType;
    json[RecordFields.timeStamp.name] = record.timeStamp;
    json[RecordFields.seller.name] = record.sellerName;
    json[RecordFields.product.name] = record.product;
    json[RecordFields.productColor.name] = record.productColor;
    json[RecordFields.productSize.name] = record.productSize;
    json[RecordFields.barcode.name] = record.barcode;
    json[RecordFields.reference.name] = record.reference;
    json[RecordFields.customer.name] = record.customer;
    json[RecordFields.quantity.name] = record.quantity;
    json[RecordFields.buyingPrice.name] = record.originalPrice;
    json[RecordFields.sellingPrice.name] = record.sellingPrice;

    if (record.payementType == PaymentTypes.deposit.name) {
      json[RecordFields.deposit.name] = record.deposit;
      json[RecordFields.remainingPayement.name] = record.remainingPayement;
    }

    return json;
  }

  AppJson<dynamic> orderToJson({required Order order}) {
    AppJson<dynamic> json = {};

    List<AppJson<dynamic>> products = [];

    for (OrderProduct product in order.products) {
      products.add(_orderProductToJson(product: product));
    }

    json[OrderFields.products.name] = products;
    json[OrderFields.address.name] = order.address;
    json[OrderFields.city.name] = order.city;
    json[OrderFields.date.name] = order.date;
    json[OrderFields.deliverToHome.name] = order.deliverToHome;
    json[OrderFields.deposit.name] = order.deposit;
    json[OrderFields.status.name] = order.status;
    json[OrderFields.sellingPrice.name] = order.sellingPrice;
    json[OrderFields.customerName.name] = order.customerName;
    json[OrderFields.deliveryCost.name] = order.deliveryCost;
    json[OrderFields.phone.name] = order.phoneNumber;
    json[OrderFields.postalCode.name] = order.postalCode;
    json[OrderFields.quantity.name] = order.quantity;
    json[OrderFields.seller.name] = order.sellerName;

    return json;
  }

  AppJson<dynamic> _orderProductToJson({required OrderProduct product}) {
    AppJson json = {};

    json[ProductFields.name.name] = product.product;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductModelFields.color.name] = product.productColor;
    json[ProductModelFields.size.name] = product.productSize;

    return json;
  }
}
