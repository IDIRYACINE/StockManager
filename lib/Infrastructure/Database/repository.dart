import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class DatabaseRepository {
  // x from json

  static ProductFamily productFamilyFromJson({required AppJson<dynamic> json}) {
    return ProductFamily(
      name: json[ProductFamilyFields.name.name] ?? 'error',
      reference: json[ProductFamilyFields.reference.name] ?? 'error',
      imageUrl: json[ProductFamilyFields.imageUrl.name] ?? 'error',
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
      color: json[ProductModelFields.color.name] ?? 'error',
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
      barcode: json[ProductFields.barcode.name] ?? 'error',
      name: json[ProductFields.name.name] ?? 'error',
      productFamily: json[ProductFields.family.name] ?? 'error',
      imageUrl: json[ProductFields.imageUrl.name] ?? 'error',
      buyingPrice: json[ProductFields.buyingPrice.name] ?? 'error',
      reference: json[ProductFields.reference.name] ?? 'error',
      sellingPrice: json[ProductFields.sellingPrice.name] ?? 'error',
      models: models,
      totalQuantity: json[ProductFields.quantity.name] ?? 'error',
      familyReference: json[ProductFields.familyReference.name] ?? 'error',
    );
  }

  static Record recordFromJson({required AppJson<dynamic> json}) {
    String payementType = json[RecordFields.paymentType.name] ?? 'error';

    Record record = Record(
      payementType: payementType,
      sellerName: json[RecordFields.seller.name] ?? 'error',
      timeStamp: json[RecordFields.timeStamp.name] ?? 'error',
      product: json[RecordFields.product.name] ?? 'error',
      productColor: json[RecordFields.productColor.name] ?? 'error',
      productSize: json[RecordFields.productSize.name] ?? 'error',
      barcode: json[RecordFields.barcode.name] ?? 'error',
      reference: json[RecordFields.reference.name] ?? 'error',
      customer: json[RecordFields.customer.name] ?? 'error',
      quantity: json[RecordFields.quantity.name] ?? 0,
      originalPrice: json[RecordFields.buyingPrice.name] ?? 0.0,
      sellingPrice: json[RecordFields.sellingPrice.name] ?? 0.0,
      date: json[RecordFields.date.name] ?? DateTime(1990),
      deposit: json[RecordFields.deposit.name] ?? 0.0,
      remainingPayement: json[RecordFields.remainingPayement.name] ?? 0.0,
      colorId: json[RecordFields.colorId.name] ?? 'error',
      sizeId: json[RecordFields.sizeId.name] ?? 'error', 
      payementTypeIndex: json[RecordFields.paymentTypeIndex.name] ?? 0,
      phoneNumber: json[RecordFields.phoneNumber.name] ?? 0,
      address: json[RecordFields.address.name] ?? '',
      city: json[RecordFields.city.name] ?? '',
    );

    return record;
  }

  static Seller sellerFromJson({required AppJson<dynamic> json}) {
    return Seller(
      name: json[SellerFields.name.name] ?? 'error',
      imageUrl: json[SellerFields.imageUrl.name] ?? 'error',
      phone: json[SellerFields.phone.name] ?? 0,
      sellerCode: json[SellerFields.code.name] ?? 0,
    );
  }

  static OrderProduct orderProductFromJson(
      {required AppJson<dynamic> json, required String key}) {
    return OrderProduct(
      reference: json[OrderProductFields.reference.name] ?? 'error',
      sellingPrice: json[OrderProductFields.sellingPrice.name] ?? 0,
      product: json[OrderProductFields.name.name] ?? 'error',
      productColor: json[OrderProductFields.color.name] ?? 'error',
      productSize: json[OrderProductFields.size.name] ?? 'error',
      buyingPrice: json[OrderProductFields.buyingPrice.name] ?? 0,
      productColorId: json[OrderProductFields.sizeId.name] ?? 'error',
      productSizeId: json[OrderProductFields.colorId.name] ?? 'error',
      
      timeStamp: key,
    );
  }

  static Order orderFromJson({required AppJson<dynamic> json}) {
    AppJson<OrderProduct> products = {};

    AppJson<dynamic>? rawProducts = json[OrderFields.products.name];

    OrderProduct product;

    if (rawProducts != null) {
      rawProducts.forEach((key, element) {
        product = orderProductFromJson(json: element, key: key);
        products[key] = product;
      });
    }

    return Order(
      products: products,
      address: json[OrderFields.address.name] ?? 'error',
      city: json[OrderFields.city.name] ?? 'error',
      date: json[OrderFields.date.name] ?? 'error',
      deliverToHome: json[OrderFields.deliverToHome.name] ?? false,
      deposit: json[OrderFields.deposit.name] ?? 0,
      status: json[OrderFields.status.name] ?? 'error',
      totalPrice: json[OrderFields.totalPrice.name] ?? 0,
      customerName: json[OrderFields.customerName.name] ?? 'error',
      deliveryCost: json[OrderFields.deliveryCost.name] ?? 0,
      phoneNumber: json[OrderFields.phone.name] ?? 0,
      postalCode: json[OrderFields.postalCode.name] ?? 0,
      quantity: json[OrderFields.quantity.name] ?? 0,
      sellerName: json[OrderFields.seller.name] ?? 'error',
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
    json[RecordFields.seller.name] = record.sellerName;
    json[RecordFields.product.name] = record.product;
    json[RecordFields.productColor.name] = record.productColor;
    json[RecordFields.productSize.name] = record.productSize;
    json[RecordFields.productColorId.name] = record.colorId;
    json[RecordFields.productSizeId.name] = record.sizeId;
    json[RecordFields.barcode.name] = record.barcode;
    json[RecordFields.reference.name] = record.reference;
    json[RecordFields.customer.name] = record.customer;
    json[RecordFields.quantity.name] = record.quantity;
    json[RecordFields.buyingPrice.name] = record.originalPrice;
    json[RecordFields.sellingPrice.name] = record.sellingPrice;
    json[RecordFields.date.name] = record.date;
    json[RecordFields.deposit.name] = record.deposit;
    json[RecordFields.remainingPayement.name] = record.remainingPayement;

    json[RecordFields.phoneNumber.name] = record.phoneNumber;
    json[RecordFields.address.name] = record.address;
    json[RecordFields.city.name] = record.city;


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

  static AppJson<dynamic> orderProductToJson({required OrderProduct product}) {
    AppJson json = {};

    json[ProductFields.name.name] = product.product;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductModelFields.color.name] = product.productColor;
    json[ProductModelFields.size.name] = product.productSize;

    json[ProductModelFields.colorId.name] = product.productColorId;
    json[ProductModelFields.sizeId.name] = product.productSizeId;

    return json;
  }

  static ModelSize modelSizefromJson({required json}) {
    return ModelSize(
      json[ProductModelFields.size.name] ?? '',
      json[ProductModelFields.quantity.name] ?? 0,
    );
  }
}
