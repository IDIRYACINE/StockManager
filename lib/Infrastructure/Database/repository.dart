import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';

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
        product = recordProductFromJson(json: element, key: key);
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

  static RecordProduct recordProductFromJson(
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
      deposit: json[RecordProductFields.deposit.name] ?? 0,
      remainingPayement: json[RecordProductFields.remainingPayement.name] ?? 0,
    );
  }

  static Order orderFromJson({required AppJson<dynamic> json}) {
    AppJson<RecordProduct> products = {};

    AppJson<dynamic>? rawProducts = json[OrderFields.products.name];

    RecordProduct product;

    if (rawProducts != null) {
      rawProducts.forEach((key, element) {
        product = recordProductFromJson(json: element, key: key);
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

  static ModelSize modelSizefromJson({required json}) {
    return ModelSize(
      json[ProductModelFields.size.name] ?? '',
      json[ProductModelFields.quantity.name] ?? 0,
    );
  }

  static Map<String, StatsProduct> statistiquesProductFromJson(
      {required AppJson json}) {
    Map<String, StatsProduct> stats = {};

    json.forEach((reference, rawStat) {
      stats[reference] = StatsProduct(
        reference: rawStat[StatistiquesProductFields.reference.name],
        name: rawStat[StatistiquesProductFields.name.name],
        totalQuantity: rawStat[StatistiquesProductFields.quantity.name],
        profit: rawStat[StatistiquesProductFields.profit.name],
      );
    });

    return stats;
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

    AppJson<dynamic> products = {};

    record.products.forEach((key, product) {
      products[key] = recordProductToJson(product: product);
    });

    json[RecordFields.paymentType.name] = record.payementType;
    json[RecordFields.timeStamp.name] = record.timeStamp;
    json[RecordFields.date.name] = record.date;
    json[RecordFields.remainingPayement.name] = record.remainingPayement;
    json[RecordFields.totalDeposit.name] = record.totalDeposit;
    json[RecordFields.totalPrice.name] = record.totalPrice;
    json[RecordFields.customer.name] = record.customer;
    json[RecordFields.seller.name] = record.sellerName;
    json[RecordFields.phoneNumber.name] = record.phoneNumber;
    json[RecordFields.city.name] = record.city;
    json[RecordFields.address.name] = record.address;
    json[RecordFields.products.name] = products;

    return json;
  }

  static AppJson<dynamic> orderToJson({required Order order}) {
    AppJson<dynamic> json = {};

    AppJson<dynamic> products = {};

    order.products.forEach((key, product) {
      products[key] = recordProductToJson(product: product);
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

  static AppJson<dynamic> recordProductToJson(
      {required RecordProduct product}) {
    AppJson json = {};
    json[RecordProductFields.name.name] = product.product;
    json[RecordProductFields.reference.name] = product.reference;
    json[RecordProductFields.sellingPrice.name] = product.sellingPrice;
    json[RecordProductFields.color.name] = product.color;
    json[RecordProductFields.size.name] = product.size;
    json[RecordProductFields.deposit.name] = product.deposit;
    json[RecordProductFields.remainingPayement.name] =
        product.remainingPayement;
    json[RecordProductFields.colorId.name] = product.colorId;
    json[RecordProductFields.sizeId.name] = product.sizeId;

    return json;
  }

  static AppJson<dynamic> statistiqueProductsToJson(
      {required Map<String, StatsProduct> stats}) {
    AppJson<dynamic> json = {};

    stats.forEach((reference, productStat) {
      AppJson<dynamic> rawStat = {};
      rawStat[StatistiquesProductFields.quantity.name] =
          productStat.totalQuantity;
      rawStat[StatistiquesProductFields.profit.name] = productStat.profit;
      rawStat[StatistiquesProductFields.name.name] = productStat.reference;
      rawStat[StatistiquesProductFields.reference.name] = productStat.reference;

      json[reference] = rawStat;
    });
    return json;
  }

  static Map<String, dynamic> statistiqueSellersToJson(
      {required Map<String, StatsSeller> stats}) {
    Map<String, dynamic> json = {};

    stats.forEach((name, sellerStat) {
      Map<String, dynamic> rawStat = {};
      rawStat[StatistiquesSellerFields.name.name] = sellerStat.name;
      rawStat[StatistiquesSellerFields.code.name] = sellerStat.code;
      rawStat[StatistiquesSellerFields.quantity.name] = sellerStat.totalSold;

      json[name] = rawStat;
    });

    return json;
  }

  static StatsRecord statsRecordFromJson({required Map<String, dynamic> json}) {
    AppJson<RecordProduct> products = {};

    AppJson<dynamic>? rawProductStats = json[StatistiquesFields.products.name];

    RecordProduct product;

    if (rawProductStats != null) {
      rawProductStats.forEach((key, element) {
        product = recordProductFromJson(json: element, key: key);
        products[key] = product;
      });
    }

    return StatsRecord(
        date: json[StatistiquesFields.date.name],
        orderRecords: statistiquesOrderFromJson(
            json: json[StatistiquesFields.orders.name]?? {}),
        purchaseRecords: statistiquesProductFromJson(
            json: json[StatistiquesFields.products.name]),
        sellerRecords: statistiqueSellersFromJson(
            json: json[StatistiquesFields.sellers.name]),
        totalNetProfit: json[StatistiquesFields.totalNetProfit.name] ?? 0,
        totalProfit: json[StatistiquesFields.totalProfit.name] ?? 0,
        visibility: StatsVisibility.monthly);
  }

  static Map<String, StatsCity> statistiquesOrderFromJson(
      {required AppJson json}) {
    Map<String, StatsCity> stats = {};

    return stats;
  }

  static Map<String, StatsSeller> statistiqueSellersFromJson(
      {required AppJson json}) {
    Map<String, StatsSeller> stats = {};

    json.forEach((reference, rawStat) {
      stats[reference] = StatsSeller(
        code: rawStat[StatistiquesSellerFields.code.name],
        name: rawStat[StatistiquesSellerFields.name.name],
        totalSold: rawStat[StatistiquesSellerFields.quantity.name],
      );
    });

    return stats;
  }
}
