import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

abstract class DatabaseRepository {


  // x from json

  static ProductFamily productFamilyFromJson({required AppJson<dynamic> json}) {
    return ProductFamily(
      name: json[ProductFamilyFields.name.name] ?? Labels.error,
      reference: json[ProductFamilyFields.reference.name] ?? Labels.error,
      imageUrl: json[ProductFamilyFields.imageUrl.name] ?? Labels.error,
    );
  }

  static ProductModel productModelFromJson({required AppJson json , required int index}) {

    List<String> sizes = [];
    List<dynamic>? sizesJson = json[ProductModelFields.size.name];
    if (sizesJson != null) {
      for (var element in sizesJson) {
        sizes.add(element);
      }
    }

    List<dynamic>? quantitiesJson = json[ProductModelFields.quantity.name];
    List<int> sizesQuantities = [];
    if(quantitiesJson != null){
      sizesQuantities = quantitiesJson.map((e) => e as int).toList();
    }

    return ProductModel(
      color: json[ProductModelFields.color.name] ?? Labels.error,
      sizes: sizes, 
      index: index, 
      sizesQuantiites: sizesQuantities,
    );
  }

  static Product productFromJson({required AppJson<dynamic> json}) {
    List<ProductModel> models = [];
    List<dynamic>? rawModels = json[ProductFields.models.name];

    ProductModel model;

    if (rawModels != null) {
      for (int i=0 ; i < rawModels.length ; i++) {
        model = productModelFromJson(json: rawModels[i], index: i);
        models.add(model);
      }
    }

    return Product(
      barcode: json[ProductFields.barcode.name] ?? Labels.error,
      name: json[ProductFields.name.name] ?? Labels.error,
      productFamily: json[ProductFields.family.name] ?? Labels.error,
      imageUrl: json[ProductFields.imageUrl.name] ?? Labels.error,
      buyingPrice: json[ProductFields.buyingPrice.name] ?? Labels.error,
      reference: json[ProductFields.reference.name] ?? Labels.error,
      sellingPrice: json[ProductFields.sellingPrice.name] ?? Labels.error,
      models: models,
      totalQuantity: json[ProductFields.quantity.name] ?? Labels.error,
    );
  }

  static Record recordFromJson({required AppJson<dynamic> json}) {
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
      quantity: json[RecordFields.quantity.name] ?? 0,
      originalPrice: json[RecordFields.buyingPrice.name] ?? 0,
      sellingPrice: json[RecordFields.sellingPrice.name] ?? 0,
      date: json[RecordFields.date.name] ?? DateTime(1990),
       deposit: json[RecordFields.quantity.name] ?? 0, 
       remainingPayement: json[RecordFields.quantity.name] ?? 0,
    );

    if (payementType == PaymentTypes.deposit.name) {
      record.deposit = json[RecordFields.deposit.name] ?? Labels.error;
      record.remainingPayement = json[RecordFields.remainingPayement.name] ?? 0;
    }

    return record;
  }

  static Seller sellerFromJson({required AppJson<dynamic> json}) {
    return Seller(
      name: json[SellerFields.name.name] ?? Labels.error,
      imageUrl: json[SellerFields.imageUrl.name] ?? Labels.error,
      phone: json[SellerFields.phone.name] ?? 0, 
      sellerCode: json[SellerFields.code.name] ?? 0,
    );
  }

  static OrderProduct orderProductFromJson({required AppJson<dynamic> json}) {
    return OrderProduct(
      reference: json[ProductFields.reference.name] ?? Labels.error,
      sellingPrice: json[ProductFields.sellingPrice.name] ?? 0,
      product: json[ProductFields.name.name] ?? Labels.error,
      productColor: json[ProductModelFields.color.name] ?? Labels.error,
      productSize: json[ProductModelFields.size.name] ?? Labels.error, 
      buyingPrice: json[ProductFields.buyingPrice.name] ?? 0,
    );
  }

  static Order orderFromJson({required AppJson<dynamic> json}) {
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
      deposit: json[OrderFields.deposit.name] ?? 0,
      status: json[OrderFields.status.name] ?? Labels.error,
      totalPrice: json[OrderFields.sellingPrice.name] ?? 0,
      customerName: json[OrderFields.customerName.name] ?? Labels.error,
      deliveryCost: json[OrderFields.deliveryCost.name] ?? 0,
      phoneNumber: json[OrderFields.phone.name] ?? 0,
      postalCode: json[OrderFields.postalCode.name] ?? 0,
      quantity: json[OrderFields.quantity.name] ?? 0,
      sellerName: json[OrderFields.seller.name] ?? Labels.error,
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

    List<AppJson<dynamic>> models = [];

    for (ProductModel model in product.models) {
      models.add(productModelToJson(model: model));
    }

    json[ProductFields.barcode.name] = product.barcode;
    json[ProductFields.name.name] = product.name;
    json[ProductFields.family.name] = product.productFamily;
    json[ProductFields.imageUrl.name] = product.imageUrl;
    json[ProductFields.buyingPrice.name] = product.buyingPrice;
    json[ProductFields.reference.name] = product.reference;
    json[ProductFields.sellingPrice.name] = product.sellingPrice;
    json[ProductFields.models.name] = models;
    json[ProductFields.quantity.name] = product.totalQuantity;

    return json;
  }

  static AppJson<dynamic> productModelToJson({required ProductModel model}) {
    AppJson<dynamic> json = {};

    json[ProductModelFields.color.name] = model.color;
    json[ProductModelFields.size.name] = model.sizes;
    json[ProductModelFields.quantity.name] = model.sizesQuantiites;

    return json;
  }

 static  AppJson<dynamic> sellerToJson({required Seller seller}) {
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
    json[RecordFields.barcode.name] = record.barcode;
    json[RecordFields.reference.name] = record.reference;
    json[RecordFields.customer.name] = record.customer;
    json[RecordFields.quantity.name] = record.quantity;
    json[RecordFields.buyingPrice.name] = record.originalPrice;
    json[RecordFields.sellingPrice.name] = record.sellingPrice;
    json[RecordFields.date.name] =  record.date;

    if (record.payementType == PaymentTypes.deposit.name) {
      json[RecordFields.deposit.name] = record.deposit;
      json[RecordFields.remainingPayement.name] = record.remainingPayement;
    }

    return json;
  }

  static AppJson<dynamic> orderToJson({required Order order}) {
    AppJson<dynamic> json = {};

    List<AppJson<dynamic>> products = [];

    for (OrderProduct product in order.products) {
      products.add(orderProductToJson(product: product));
    }

    json[OrderFields.products.name] = products;
    json[OrderFields.address.name] = order.address;
    json[OrderFields.city.name] = order.city;
    json[OrderFields.date.name] = order.date;
    json[OrderFields.deliverToHome.name] = order.deliverToHome;
    json[OrderFields.deposit.name] = order.deposit;
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

    return json;
  }
}
