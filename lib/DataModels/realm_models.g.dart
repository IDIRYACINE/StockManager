// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realm_models.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ProductModel extends _ProductModel with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  ProductModel({
    String color = '',
    String size = '',
    int quantity = 1,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<ProductModel>({
        'color': '',
        'size': '',
        'quantity': 1,
      });
    }
    RealmObject.set(this, 'color', color);
    RealmObject.set(this, 'size', size);
    RealmObject.set(this, 'quantity', quantity);
  }

  ProductModel._();

  @override
  String get color => RealmObject.get<String>(this, 'color') as String;
  @override
  set color(String value) => RealmObject.set(this, 'color', value);

  @override
  String get size => RealmObject.get<String>(this, 'size') as String;
  @override
  set size(String value) => RealmObject.set(this, 'size', value);

  @override
  int get quantity => RealmObject.get<int>(this, 'quantity') as int;
  @override
  set quantity(int value) => RealmObject.set(this, 'quantity', value);

  @override
  Stream<RealmObjectChanges<ProductModel>> get changes =>
      RealmObject.getChanges<ProductModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(ProductModel._);
    return const SchemaObject(ProductModel, 'ProductModel', [
      SchemaProperty('color', RealmPropertyType.string),
      SchemaProperty('size', RealmPropertyType.string),
      SchemaProperty('quantity', RealmPropertyType.int),
    ]);
  }
}

class Product extends _Product with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  Product({
    String reference = '',
    int barcode = 0,
    String name = '',
    double buyingPrice = 0,
    double sellingPrice = 0,
    int totalQuantity = 0,
    String productFamily = '',
    Iterable<ProductModel> models = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Product>({
        'reference': '',
        'barcode': 0,
        'name': '',
        'buyingPrice': 0,
        'sellingPrice': 0,
        'totalQuantity': 0,
        'productFamily': '',
      });
    }
    RealmObject.set(this, 'reference', reference);
    RealmObject.set(this, 'barcode', barcode);
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'buyingPrice', buyingPrice);
    RealmObject.set(this, 'sellingPrice', sellingPrice);
    RealmObject.set(this, 'totalQuantity', totalQuantity);
    RealmObject.set(this, 'productFamily', productFamily);
    RealmObject.set<RealmList<ProductModel>>(
        this, 'models', RealmList<ProductModel>(models));
  }

  Product._();

  @override
  String get reference => RealmObject.get<String>(this, 'reference') as String;
  @override
  set reference(String value) => RealmObject.set(this, 'reference', value);

  @override
  int get barcode => RealmObject.get<int>(this, 'barcode') as int;
  @override
  set barcode(int value) => RealmObject.set(this, 'barcode', value);

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  double get buyingPrice =>
      RealmObject.get<double>(this, 'buyingPrice') as double;
  @override
  set buyingPrice(double value) => RealmObject.set(this, 'buyingPrice', value);

  @override
  double get sellingPrice =>
      RealmObject.get<double>(this, 'sellingPrice') as double;
  @override
  set sellingPrice(double value) =>
      RealmObject.set(this, 'sellingPrice', value);

  @override
  int get totalQuantity => RealmObject.get<int>(this, 'totalQuantity') as int;
  @override
  set totalQuantity(int value) => RealmObject.set(this, 'totalQuantity', value);

  @override
  RealmList<ProductModel> get models =>
      RealmObject.get<ProductModel>(this, 'models') as RealmList<ProductModel>;
  @override
  set models(covariant RealmList<ProductModel> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get productFamily =>
      RealmObject.get<String>(this, 'productFamily') as String;
  @override
  set productFamily(String value) =>
      RealmObject.set(this, 'productFamily', value);

  @override
  Stream<RealmObjectChanges<Product>> get changes =>
      RealmObject.getChanges<Product>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Product._);
    return const SchemaObject(Product, 'Product', [
      SchemaProperty('reference', RealmPropertyType.string),
      SchemaProperty('barcode', RealmPropertyType.int),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('buyingPrice', RealmPropertyType.double),
      SchemaProperty('sellingPrice', RealmPropertyType.double),
      SchemaProperty('totalQuantity', RealmPropertyType.int),
      SchemaProperty('models', RealmPropertyType.object,
          linkTarget: 'ProductModel', collectionType: RealmCollectionType.list),
      SchemaProperty('productFamily', RealmPropertyType.string),
    ]);
  }
}

class Record extends _Record with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  Record({
    String date = '',
    String sellerName = '',
    String product = '',
    String productSize = '',
    String productColor = '',
    int quantity = 0,
    double buyingPrice = 0,
    double sellingPrice = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Record>({
        'date': '',
        'sellerName': '',
        'product': '',
        'productSize': '',
        'productColor': '',
        'quantity': 0,
        'buyingPrice': 0,
        'sellingPrice': 0,
      });
    }
    RealmObject.set(this, 'date', date);
    RealmObject.set(this, 'sellerName', sellerName);
    RealmObject.set(this, 'product', product);
    RealmObject.set(this, 'productSize', productSize);
    RealmObject.set(this, 'productColor', productColor);
    RealmObject.set(this, 'quantity', quantity);
    RealmObject.set(this, 'buyingPrice', buyingPrice);
    RealmObject.set(this, 'sellingPrice', sellingPrice);
  }

  Record._();

  @override
  String get date => RealmObject.get<String>(this, 'date') as String;
  @override
  set date(String value) => RealmObject.set(this, 'date', value);

  @override
  String get sellerName =>
      RealmObject.get<String>(this, 'sellerName') as String;
  @override
  set sellerName(String value) => RealmObject.set(this, 'sellerName', value);

  @override
  String get product => RealmObject.get<String>(this, 'product') as String;
  @override
  set product(String value) => RealmObject.set(this, 'product', value);

  @override
  String get productSize =>
      RealmObject.get<String>(this, 'productSize') as String;
  @override
  set productSize(String value) => RealmObject.set(this, 'productSize', value);

  @override
  String get productColor =>
      RealmObject.get<String>(this, 'productColor') as String;
  @override
  set productColor(String value) =>
      RealmObject.set(this, 'productColor', value);

  @override
  int get quantity => RealmObject.get<int>(this, 'quantity') as int;
  @override
  set quantity(int value) => RealmObject.set(this, 'quantity', value);

  @override
  double get buyingPrice =>
      RealmObject.get<double>(this, 'buyingPrice') as double;
  @override
  set buyingPrice(double value) => RealmObject.set(this, 'buyingPrice', value);

  @override
  double get sellingPrice =>
      RealmObject.get<double>(this, 'sellingPrice') as double;
  @override
  set sellingPrice(double value) =>
      RealmObject.set(this, 'sellingPrice', value);

  @override
  Stream<RealmObjectChanges<Record>> get changes =>
      RealmObject.getChanges<Record>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Record._);
    return const SchemaObject(Record, 'Record', [
      SchemaProperty('date', RealmPropertyType.string),
      SchemaProperty('sellerName', RealmPropertyType.string),
      SchemaProperty('product', RealmPropertyType.string),
      SchemaProperty('productSize', RealmPropertyType.string),
      SchemaProperty('productColor', RealmPropertyType.string),
      SchemaProperty('quantity', RealmPropertyType.int),
      SchemaProperty('buyingPrice', RealmPropertyType.double),
      SchemaProperty('sellingPrice', RealmPropertyType.double),
    ]);
  }
}

class Seller extends _Seller with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  Seller({
    String name = '',
    int phone = 0,
    String imageUrl = '',
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Seller>({
        'name': '',
        'phone': 0,
        'imageUrl': '',
      });
    }
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'phone', phone);
    RealmObject.set(this, 'imageUrl', imageUrl);
  }

  Seller._();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  int get phone => RealmObject.get<int>(this, 'phone') as int;
  @override
  set phone(int value) => RealmObject.set(this, 'phone', value);

  @override
  String get imageUrl => RealmObject.get<String>(this, 'imageUrl') as String;
  @override
  set imageUrl(String value) => RealmObject.set(this, 'imageUrl', value);

  @override
  Stream<RealmObjectChanges<Seller>> get changes =>
      RealmObject.getChanges<Seller>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Seller._);
    return const SchemaObject(Seller, 'Seller', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('phone', RealmPropertyType.int),
      SchemaProperty('imageUrl', RealmPropertyType.string),
    ]);
  }
}

class ProductFamily extends _ProductFamily with RealmEntity, RealmObject {
  ProductFamily(
    String name, {
    String? imageUrl,
  }) {
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'imageUrl', imageUrl);
  }

  ProductFamily._();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  String? get imageUrl => RealmObject.get<String>(this, 'imageUrl') as String?;
  @override
  set imageUrl(String? value) => RealmObject.set(this, 'imageUrl', value);

  @override
  Stream<RealmObjectChanges<ProductFamily>> get changes =>
      RealmObject.getChanges<ProductFamily>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(ProductFamily._);
    return const SchemaObject(ProductFamily, 'ProductFamily', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('imageUrl', RealmPropertyType.string, optional: true),
    ]);
  }
}

class OrderProduct extends _OrderProduct with RealmEntity, RealmObject {
  OrderProduct(
    String product,
    String productSize,
    String productColor,
    int quantity,
  ) {
    RealmObject.set(this, 'product', product);
    RealmObject.set(this, 'productSize', productSize);
    RealmObject.set(this, 'productColor', productColor);
    RealmObject.set(this, 'quantity', quantity);
  }

  OrderProduct._();

  @override
  String get product => RealmObject.get<String>(this, 'product') as String;
  @override
  set product(String value) => RealmObject.set(this, 'product', value);

  @override
  String get productSize =>
      RealmObject.get<String>(this, 'productSize') as String;
  @override
  set productSize(String value) => RealmObject.set(this, 'productSize', value);

  @override
  String get productColor =>
      RealmObject.get<String>(this, 'productColor') as String;
  @override
  set productColor(String value) =>
      RealmObject.set(this, 'productColor', value);

  @override
  int get quantity => RealmObject.get<int>(this, 'quantity') as int;
  @override
  set quantity(int value) => RealmObject.set(this, 'quantity', value);

  @override
  Stream<RealmObjectChanges<OrderProduct>> get changes =>
      RealmObject.getChanges<OrderProduct>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(OrderProduct._);
    return const SchemaObject(OrderProduct, 'OrderProduct', [
      SchemaProperty('product', RealmPropertyType.string),
      SchemaProperty('productSize', RealmPropertyType.string),
      SchemaProperty('productColor', RealmPropertyType.string),
      SchemaProperty('quantity', RealmPropertyType.int),
    ]);
  }
}

class Customer extends _Customer with RealmEntity, RealmObject {
  Customer(
    String name,
    String address,
    String city,
    int postalCode, {
    int? phoneNumber,
  }) {
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'phoneNumber', phoneNumber);
    RealmObject.set(this, 'address', address);
    RealmObject.set(this, 'city', city);
    RealmObject.set(this, 'postalCode', postalCode);
  }

  Customer._();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  int? get phoneNumber => RealmObject.get<int>(this, 'phoneNumber') as int?;
  @override
  set phoneNumber(int? value) => RealmObject.set(this, 'phoneNumber', value);

  @override
  String get address => RealmObject.get<String>(this, 'address') as String;
  @override
  set address(String value) => RealmObject.set(this, 'address', value);

  @override
  String get city => RealmObject.get<String>(this, 'city') as String;
  @override
  set city(String value) => RealmObject.set(this, 'city', value);

  @override
  int get postalCode => RealmObject.get<int>(this, 'postalCode') as int;
  @override
  set postalCode(int value) => RealmObject.set(this, 'postalCode', value);

  @override
  Stream<RealmObjectChanges<Customer>> get changes =>
      RealmObject.getChanges<Customer>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Customer._);
    return const SchemaObject(Customer, 'Customer', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('phoneNumber', RealmPropertyType.int, optional: true),
      SchemaProperty('address', RealmPropertyType.string),
      SchemaProperty('city', RealmPropertyType.string),
      SchemaProperty('postalCode', RealmPropertyType.int),
    ]);
  }
}

class Order extends _Order with RealmEntity, RealmObject {
  Order(
    String date,
    String sellerName,
    int quantity,
    String status, {
    Customer? customer,
    Iterable<OrderProduct> products = const [],
  }) {
    RealmObject.set(this, 'date', date);
    RealmObject.set(this, 'sellerName', sellerName);
    RealmObject.set(this, 'quantity', quantity);
    RealmObject.set(this, 'status', status);
    RealmObject.set(this, 'customer', customer);
    RealmObject.set<RealmList<OrderProduct>>(
        this, 'products', RealmList<OrderProduct>(products));
  }

  Order._();

  @override
  String get date => RealmObject.get<String>(this, 'date') as String;
  @override
  set date(String value) => RealmObject.set(this, 'date', value);

  @override
  String get sellerName =>
      RealmObject.get<String>(this, 'sellerName') as String;
  @override
  set sellerName(String value) => RealmObject.set(this, 'sellerName', value);

  @override
  RealmList<OrderProduct> get products =>
      RealmObject.get<OrderProduct>(this, 'products')
          as RealmList<OrderProduct>;
  @override
  set products(covariant RealmList<OrderProduct> value) =>
      throw RealmUnsupportedSetError();

  @override
  int get quantity => RealmObject.get<int>(this, 'quantity') as int;
  @override
  set quantity(int value) => RealmObject.set(this, 'quantity', value);

  @override
  String get status => RealmObject.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObject.set(this, 'status', value);

  @override
  Customer? get customer =>
      RealmObject.get<Customer>(this, 'customer') as Customer?;
  @override
  set customer(covariant Customer? value) =>
      RealmObject.set(this, 'customer', value);

  @override
  Stream<RealmObjectChanges<Order>> get changes =>
      RealmObject.getChanges<Order>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Order._);
    return const SchemaObject(Order, 'Order', [
      SchemaProperty('date', RealmPropertyType.string),
      SchemaProperty('sellerName', RealmPropertyType.string),
      SchemaProperty('products', RealmPropertyType.object,
          linkTarget: 'OrderProduct', collectionType: RealmCollectionType.list),
      SchemaProperty('quantity', RealmPropertyType.int),
      SchemaProperty('status', RealmPropertyType.string),
      SchemaProperty('customer', RealmPropertyType.object,
          optional: true, linkTarget: 'Customer'),
    ]);
  }
}
