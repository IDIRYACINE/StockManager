
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

  Future<void> insertProduct({required Product product}) async {
    _database.insertProduct(productToJson(product: product));
  }

  Future<void> updateProduct({required Product product , required AppJson updatedValues}) async {
    _database.updateProduct(productToJson(product: product),updatedValues);
  }

  Future<void> deleteProduct({required Product product}) async {
    _database.removeProduct(productToJson(product: product));
  }

  Future<void> insertProductFamily({required ProductFamily productFamily}) async {
    _database.insertProductFamily(productFamilyToJson(family: productFamily));
  }

  Future<void> updateProductFamily({required ProductFamily productFamily,required AppJson updatedValues}) async {
    _database.updateProductFamily(productFamilyToJson(family: productFamily),updatedValues);
  }

  Future<void> deleteProductFamily({required ProductFamily productFamily}) async {
    _database.removeProductFamily(productFamilyToJson(family: productFamily));
  }

  Future<void> insertRecord({required Record record}) async {
    _database.insertPurchaseRecord(recordToJson(record: record));
  }

  Future<void> insertSeller({
    required Seller seller
  }) async {
    _database.insertSeller(sellerToJson(seller: seller));
  }


  Future<void> updateSeller({
    required Seller seller,required AppJson updatedValues
  }) async {
    _database.updateSeller(sellerToJson(seller: seller),updatedValues);
  }


  Future<void> deleteSeller({
    required Seller seller
  }) async {
    _database.removeSeller(sellerToJson(seller: seller));
  }



  // search x 

  Future<List<ProductFamily>> searchProductFamily(
      AppJson search) async {
    List<ProductFamily> family = [];

    MongoDbDataStream data = await _database.searchProductFamily(search);

    data.forEach((element) {
      family.add(productFamilyFromJson(json:element));
    });

    return family;
  }

  Future<List<Product>> searchProduct(AppJson search) async {
    List<Product> products = [];

    MongoDbDataStream data = await _database.searchProduct(search);

    data.forEach((element) {
      products.add(productFromJson(json:element));
    });

    return products;
  }

  Future<List<Record>> searchRecord(AppJson search) async {
    List<Record> records = [];

    MongoDbDataStream data = await _database.searchPurchaseRecord(search);

    data.forEach((element) {
      records.add(recordFromJson(json:element));
    });

    return records;
  }

  // x from json

  ProductFamily productFamilyFromJson({required AppJson<dynamic> json}) {
    return ProductFamily(
      name: json[ProductFamilyFields.name.name] ?? Labels.error,
      reference: json[ProductFamilyFields.reference.name] ?? Labels.error,
      imageUrl: json[ProductFamilyFields.imageUrl.name] ?? Labels.error,
    );
  }

  Product productFromJson({required AppJson<dynamic> json}) {
    return Product(
      barcode: json[ProductFields.barcode.name] ?? Labels.error,
      name: json[ProductFields.name.name] ?? Labels.error,
      productFamily: json[ProductFields.family.name] ?? Labels.error,
      imageUrl: json[ProductFields.imageUrl.name] ?? Labels.error,
      originalPrice: json[ProductFields.buyingPrice.name] ?? Labels.error,
      reference: json[ProductFields.reference.name] ?? Labels.error,
      sellingPrice: json[ProductFields.sellingPrice.name] ?? Labels.error,
      models: json[ProductFields.models.name] ?? Labels.error,
      totalQuantity: json[ProductFields.quantity.name] ?? Labels.error,
    );
  }

  Record recordFromJson({required AppJson<dynamic> json}) {
    String payementType = json[RecordFields.paymentType.name] ?? Labels.error;
    Record record = Record(
      payementType: payementType,
      sellerName: json[RecordFields.seller.name] ?? Labels.error,
      product: json[RecordFields.product.name] ?? Labels.error,
      productColor: json[RecordFields.productColor.name] ?? Labels.error,
      productSize: json[RecordFields.productSize.name] ?? Labels.error,
      barcode: json[RecordFields.barcode.name] ?? Labels.error,
      reference: json[RecordFields.reference.name] ?? Labels.error,
      customer: json[RecordFields.customer.name] ?? Labels.error,
      quantity: json[RecordFields.quantity.name] ?? Labels.error,
      originalPrice: json[RecordFields.buyingPrice.name] ?? Labels.error,
      sellingPrice: json[RecordFields.sellingPrice.name] ?? Labels.error,
    );

    if (payementType == PaymentTypes.deposit.name) {
      record.deposit = json[RecordFields.deposit.name] ?? Labels.error;
      record.remainingPayement =
          json[RecordFields.remainingPayement.name] ?? Labels.error;
    }

    return record;
  }

  Seller sellerFromJson({required AppJson<dynamic> json}) {
    return Seller(
      name: json[SellerFields.name.name] ?? Labels.error,
      imageUrl: json[SellerFields.imageUrl.name] ?? Labels.error,
      phone: json[SellerFields.imageUrl.name] ?? Labels.error,
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
        _productModelToJson(model: model);
    }

    json[ProductFields.barcode.name] = product.barcode;
    json[ProductFields.name.name] = product.name;
    json[ProductFields.family.name] = product.productFamily;
    json[ProductFields.imageUrl.name] = product.imageUrl;
    json[ProductFields.buyingPrice.name] = product.originalPrice;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductFields.models.name] = models ;
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

}