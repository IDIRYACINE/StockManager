import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class DatabaseRepository {
  // x from json

  static ProductFamily productFamilyFromJson({required AppJson<dynamic> json}) {
    return ProductFamily(
      name: json[ProductFamilyFields.name.name] ?? 'not set',
      reference: json[ProductFamilyFields.reference.name] ?? 'not set',
      imageUrl: json[ProductFamilyFields.imageUrl.name] ?? 'not set',
    );
  }

  static ProductModel productModelFromJson(
      {required AppJson json, required String index}) {
    Map<String, dynamic>? jsonSizes = json[ProductModelFields.size.name];
    Map<String, ModelSize> sizes = {};

    if (jsonSizes != null) {
      jsonSizes.forEach((key, value) {
        sizes[key] = modelSizefromJson(json: value);
      });
    }

    return ProductModel(
      color: json[ProductModelFields.color.name] ?? 'not set',
      id: index,
      sizes: sizes,
    );
  }

  static Product productFromJson({required AppJson<dynamic> json}) {
    Map<String, ProductModel> models = {};
    Map<String, dynamic>? rawModels = json[ProductFields.models.name];

    if (rawModels != null) {
      rawModels.forEach((key, value) {
        models[key] = productModelFromJson(json: value, index: key);
      });
    }

    return Product(
      barcode: json[ProductFields.barcode.name] ?? 'not set',
      name: json[ProductFields.name.name] ?? 'not set',
      productFamily: json[ProductFields.family.name] ?? 'not set',
      imageUrl: json[ProductFields.imageUrl.name] ?? 'not set',
      buyingPrice: json[ProductFields.buyingPrice.name] ?? 'not set',
      reference: json[ProductFields.reference.name] ?? 'not set',
      sellingPrice: json[ProductFields.sellingPrice.name] ?? 'not set',
      models: models,
      totalQuantity: json[ProductFields.quantity.name] ?? 'not set',
      familyReference: json[ProductFields.familyReference.name] ?? 'not set',
    );
  }

  static Record recordFromJson({required AppJson<dynamic> json}) {
    String payementType = json[RecordFields.paymentType.name] ?? 'not set';

    AppJson<dynamic>? rawProducts = json[OrderFields.products.name];
    AppJson<RecordProduct> products = {};

    RecordProduct product;

    if (rawProducts != null) {
      rawProducts.forEach((key, element) {
        product = orderProductFromJson(json: element, key: key);
        products[key] = product;
      });
    }

    Record record = Record(
      payementType: payementType,
      timeStamp: json[RecordFields.timeStamp.name] ?? 0,
      totalQuantity: json[RecordFields.quantity.name] ?? 0,
      date: json[RecordFields.date.name] ?? DateTime(1990),
      remainingPayement: json[RecordFields.remainingPayement.name] ?? 0.0,
      payementTypeIndex: json[RecordFields.paymentTypeIndex.name] ?? 0,
      products: products,
      totalPrice: json[RecordFields.totalPrice.name] ?? 0.0,
      sellerName: json[RecordFields.seller.name] ?? 'not set', 
      totalDeposit: json[RecordFields.totalDeposit.name] ?? 0.0,
      customer: json[RecordFields.customer.name] ?? 'not set',
    );

    return record;
  }

  static Seller sellerFromJson({required AppJson<dynamic> json}) {
    return Seller(
      name: json[SellerFields.name.name] ?? 'not set',
      imageUrl: json[SellerFields.imageUrl.name] ?? 'not set',
      phone: json[SellerFields.phone.name] ?? 0,
      sellerCode: json[SellerFields.code.name] ?? 0,
    );
  }

  static RecordProduct orderProductFromJson(
      {required AppJson<dynamic> json, required String key}) {
    return RecordProduct(
      reference: json[RecordProductFields.reference.name] ?? 'not set',
      sellingPrice: json[RecordProductFields.sellingPrice.name] ?? 0,
      product: json[RecordProductFields.name.name] ?? 'not set',
      color: json[RecordProductFields.color.name] ?? 'not set',
      size: json[RecordProductFields.size.name] ?? 'not set',
      colorId: json[RecordProductFields.sizeId.name] ?? 'not set',
      sizeId: json[RecordProductFields.colorId.name] ?? 'not set',
      timeStamp: key, 
      deposit:json[RecordProductFields.deposit.name] ?? 'not set',
      remainingPayement:json[RecordProductFields.remainingPayement.name] ?? 0,
    );
  }

  static Order orderFromJson({required AppJson<dynamic> json}) {
    AppJson<RecordProduct> products = {};

    AppJson<dynamic>? rawProducts = json[OrderFields.products.name];

    RecordProduct product;

    if (rawProducts != null) {
      rawProducts.forEach((key, element) {
        product = orderProductFromJson(json: element, key: key);
        products[key] = product;
      });
    }

    return Order(
      products: products,
      address: json[OrderFields.address.name] ?? 'not set',
      city: json[OrderFields.city.name] ?? 'not set',
      date: json[OrderFields.date.name] ?? 'not set',
      deliverToHome: json[OrderFields.deliverToHome.name] ?? false,
      deposit: json[OrderFields.deposit.name] ?? 0,
      status: json[OrderFields.status.name] ?? 'not set',
      totalPrice: json[OrderFields.totalPrice.name] ?? 0,
      customerName: json[OrderFields.customerName.name] ?? 'not set',
      deliveryCost: json[OrderFields.deliveryCost.name] ?? 0,
      phoneNumber: json[OrderFields.phone.name] ?? 0,
      postalCode: json[OrderFields.postalCode.name] ?? 0,
      quantity: json[OrderFields.quantity.name] ?? 0,
      sellerName: json[OrderFields.seller.name] ?? 'not set',
      timeStamp: json[OrderFields.timeStamp.name] ?? 0,
      remainingPayement: json[OrderFields.remainingPayement.name] ?? 0,
    );
  }

  // x to json

  static AppJson<dynamic> productFamilyToJson({required ProductFamily family}) {
    AppJson<dynamic> json = {};

    json[ProductFamilyFields.name.name] = family.name;
    json[ProductFamilyFields.reference.name] = family.reference;
    json[ProductFamilyFields.imageUrl.name] = family.imageUrl;

    return json;
  }

  static AppJson<dynamic> productToJson({required Product product}) {
    AppJson<dynamic> json = {};

    Map<String, dynamic> models = {};

    product.models.forEach((key, value) {
      models[key] = productModelToJson(model: value);
    });

    json[ProductFields.barcode.name] = product.barcode;
    json[ProductFields.name.name] = product.name;
    json[ProductFields.family.name] = product.productFamily;
    json[ProductFields.imageUrl.name] = product.imageUrl;
    json[ProductFields.buyingPrice.name] = product.buyingPrice;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductFields.models.name] = models;
    json[ProductFields.quantity.name] = product.totalQuantity;
    json[ProductFields.familyReference.name] = product.familyReference;

    return json;
  }

  static AppJson<dynamic> productModelToJson({required ProductModel model}) {
    AppJson<dynamic> json = {};
    Map<String, dynamic> jsonSize = {};

    model.sizes.forEach((key, value) {
      jsonSize[key] = {
        ProductModelFields.size.name: value.size,
        ProductModelFields.quantity.name: value.quantity,
      };
    });

    json[ProductModelFields.color.name] = model.color;

    json[ProductModelFields.size.name] = jsonSize;

    return json;
  }

  static AppJson<dynamic> sellerToJson({required Seller seller}) {
    AppJson<dynamic> json = {};

    json[SellerFields.name.name] = seller.name;
    json[SellerFields.imageUrl.name] = seller.imageUrl;
    json[SellerFields.phone.name] = seller.phone;
    return json;
  }

  static AppJson<dynamic> recordToJson({required Record record}) {
    AppJson<dynamic> json = {};
    json[RecordFields.paymentType.name] = record.payementType;
    json[RecordFields.timeStamp.name] = record.timeStamp;
    json[RecordFields.date.name] = record.date;
    json[RecordFields.remainingPayement.name] = record.remainingPayement;

    AppJson<dynamic> products = {};

    record.products.forEach((key, product) {
      products[key] = orderProductToJson(product: product);
    });

    return json;
  }

  static AppJson<dynamic> orderToJson({required Order order}) {
    AppJson<dynamic> json = {};

    AppJson<dynamic> products = {};

    order.products.forEach((key, product) {
      products[key] = orderProductToJson(product: product);
    });

    json[OrderFields.products.name] = products;
    json[OrderFields.address.name] = order.address;
    json[OrderFields.city.name] = order.city;
    json[OrderFields.date.name] = order.date;
    json[OrderFields.deliverToHome.name] = order.deliverToHome;
    json[OrderFields.deposit.name] = order.deposit;
    json[OrderFields.totalPrice.name] = order.totalPrice;
    json[OrderFields.status.name] = order.status;
    json[OrderFields.sellingPrice.name] = order.totalPrice;
    json[OrderFields.customerName.name] = order.customerName;
    json[OrderFields.deliveryCost.name] = order.deliveryCost;
    json[OrderFields.phone.name] = order.phoneNumber;
    json[OrderFields.postalCode.name] = order.postalCode;
    json[OrderFields.quantity.name] = order.quantity;
    json[OrderFields.seller.name] = order.sellerName;
    json[OrderFields.timeStamp.name] = order.timeStamp;
    json[OrderFields.remainingPayement.name] = order.remainingPayement;

    return json;
  }

  static AppJson<dynamic> orderProductToJson({required RecordProduct product}) {
    AppJson json = {};

    json[ProductFields.name.name] = product.product;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductModelFields.color.name] = product.color;
    json[ProductModelFields.size.name] = product.size;

    json[ProductModelFields.colorId.name] = product.colorId;
    json[ProductModelFields.sizeId.name] = product.sizeId;

    return json;
  }

  static ModelSize modelSizefromJson({required json}) {
    return ModelSize(
      json[ProductModelFields.size.name] ?? '',
      json[ProductModelFields.quantity.name] ?? 0,
    );
  }
}
