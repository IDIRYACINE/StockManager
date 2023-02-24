import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/metadata.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.color,
    required this.sizes,
  });

  String id;
  String color;
  Map<String, ModelSize> sizes;

  static defaultInstance(String id) {
    return ProductModel(
      id: id,
      color: "Default",
      sizes: {},
    );
  }
}

class ModelSize {
  String size;
  int quantity;

  ModelSize(this.size, this.quantity);

  static ModelSize defaultInstance() {
    return ModelSize("Default", 1);
  }
}

class Product {
  Product(
      {required this.barcode,
      required this.name,
      required this.productFamily,
      required this.buyingPrice,
      required this.sellingPrice,
      required this.reference,
      required this.totalQuantity,
      required this.models,
      required this.familyReference,
      required this.imageUrl});

  String reference;
  int barcode;
  String name;
  String familyReference;
  double buyingPrice;
  String? imageUrl;
  double sellingPrice;
  int totalQuantity;
  Map<String, ProductModel> models;
  String productFamily;

  static Product defaultInstance() {
    return Product(
      barcode: 0,
      name: '',
      productFamily: '',
      buyingPrice: 0.0,
      sellingPrice: 0.0,
      reference: '',
      totalQuantity: 0,
      models: {},
      imageUrl: null,
      familyReference: '',
    );
  }
}


class ProductFamily {
  String name;
  String reference;
  String? imageUrl;

  ProductFamily({required this.name, required this.reference, this.imageUrl});

  ProductFamily copyWith({
    String? name,
    String? reference,
    String? imageUrl,
  }) {
    return ProductFamily(
      name: name ?? this.name,
      reference: reference ?? this.reference,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}

class RecordProduct {
  RecordProduct({
    required this.product,
    required this.color,
    required this.size,
    required this.reference,
    required this.sellingPrice,
    required this.deposit,
    required this.sizeId,
    required this.colorId,
    required this.timeStamp,
    required this.remainingPayement,
  });

  String reference;
  double deposit;
  String product;
  String size;
  String color;
  String sizeId;
  double remainingPayement;
  String colorId;
  double sellingPrice;
  String timeStamp;

  static RecordProduct defaultInstance() {
    return RecordProduct(
      product: '',
      color: '',
      size: '',
      reference: '',
      sellingPrice: 0,
      deposit: 0,
      colorId: '',
      sizeId: '',
      timeStamp: Utility.getTimeStamp().toString(),
      remainingPayement: 0,
    );
  }

  RecordProduct copyWith({
    String? product,
    String? productColor,
    String? productSize,
    String? reference,
    double? sellingPrice,
    double? deposit,
    double? remainingPayement,
    String? productSizeId,
    String? productColorId,
    String? timeStamp,
  }) {
    return RecordProduct(
      product: product ?? this.product,
      color: productColor ?? color,
      size: productSize ?? size,
      reference: reference ?? this.reference,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      deposit: deposit ?? this.deposit,
      colorId: productColorId ?? colorId,
      sizeId: productSizeId ?? sizeId,
      timeStamp: timeStamp ?? this.timeStamp,
      remainingPayement: remainingPayement ?? this.remainingPayement,
    );
  }
}

class Customer {
  Customer({
    required this.name,
    this.phoneNumber,
    required this.address,
    required this.city,
    required this.postalCode,
  });

  String name;
  int? phoneNumber;
  String address;
  String city;
  int postalCode;
}

class Order {
  Order({
    required this.timeStamp,
    required this.date,
    required this.products,
    required this.status,
    required this.quantity,
    required this.sellerName,
    required this.customerName,
    required this.phoneNumber,
    required this.address,
    required this.city,
    required this.postalCode,
    required this.deposit,
    required this.totalPrice,
    required this.deliverToHome,
    required this.deliveryCost,
    required this.remainingPayement,
  });

  DateTime date;

  int timeStamp;
  String sellerName;
  Map<String, RecordProduct> products;
  int quantity;
  double deposit;
  String status;
  double remainingPayement;
  double deliveryCost;
  bool deliverToHome;
  double totalPrice;
  String customerName;
  int phoneNumber;
  String address;
  String city;
  int postalCode;

  static Order defaultInstance() {
    return Order(
        products: {},
        status: OrderStatus.confirmed.name,
        quantity: 0,
        sellerName: '',
        customerName: '',
        phoneNumber: 0,
        address: '',
        city: '',
        postalCode: 0,
        deposit: 0,
        totalPrice: 0,
        deliverToHome: true,
        deliveryCost: 0,
        timeStamp: Utility.getTimeStamp(),
        date: Utility.getDate(),
        remainingPayement: 0);
  }

  Map<String, RecordProduct> _copyProducts() {
    Map<String, RecordProduct> copyProducts = {};

    products.forEach((key, value) {
      copyProducts[key] = value.copyWith();
    });

    return copyProducts;
  }

  Order copyWith({
    Map<String, RecordProduct>? products,
    DateTime? date,
    String? status,
    int? quantity,
    int? timeStamp,
    String? sellerName,
    String? customerName,
    int? phoneNumber,
    String? address,
    String? city,
    int? postalCode,
    double? deposit,
    double? sellingPrice,
    bool? deliverToHome,
    double? deliveryCost,
    double? remainingPayement,
  }) {
    return Order(
      products: products ?? _copyProducts(),
      status: status ?? this.status,
      quantity: quantity ?? this.quantity,
      sellerName: sellerName ?? this.sellerName,
      customerName: customerName ?? this.customerName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      deposit: deposit ?? this.deposit,
      totalPrice: sellingPrice ?? totalPrice,
      deliverToHome: deliverToHome ?? this.deliverToHome,
      deliveryCost: deliveryCost ?? this.deliveryCost,
      timeStamp: timeStamp ?? this.timeStamp,
      date: date ?? this.date,
      remainingPayement: remainingPayement ?? this.remainingPayement,
    );
  }
}

class Record {
  Record(
      {required this.payementType,
      required this.payementTypeIndex,
      required this.timeStamp,
      required this.date,
      required this.remainingPayement,
      required this.totalQuantity,
      required this.totalPrice,
      required this.products,
      required this.sellerName,
      required this.totalDeposit,
      required this.customer,
      this.city,
      this.address,
      this.phoneNumber});

  DateTime date;
  int timeStamp;
  int totalQuantity;
  String sellerName;
  double totalPrice;
  double remainingPayement;
  double totalDeposit;
  String payementType;
  String customer;
  int? phoneNumber;
  String? city;
  String? address;
  int payementTypeIndex;
  Map<String, RecordProduct> products;

  // we use this as an identifier to query transactions of the same payment
  static int purchaseTimeStamp = 0;
  static void generatePurchaseId() {
    purchaseTimeStamp = DateTime.now().millisecondsSinceEpoch;
  }

   static int depositTimeStamp = 0;
  static void generateDepositId() {
    depositTimeStamp = DateTime.now().millisecondsSinceEpoch;
  }

  // dart Record copyWith
  Record copyWith(
      {String? payementType,
      int? payementTypeIndex,
      int? timeStamp,
      DateTime? date,
      double? remainingPayement,
      int? totalQuantity,
      double? totalPrice,
      String? sellerName,
      Map<String, RecordProduct>? products,
      String? customer,
      double? totalDeposit,
      int? phoneNumber,
      String? city,
      String? address}) {
    return Record(
        date: date ?? this.date,
        payementType: payementType ?? this.payementType,
        timeStamp: timeStamp ?? this.timeStamp,
        totalQuantity: totalQuantity ?? this.totalQuantity,
        remainingPayement: remainingPayement ?? this.remainingPayement,
        payementTypeIndex: payementTypeIndex ?? this.payementTypeIndex,
        totalPrice: totalPrice ?? this.totalPrice,
        products: products ?? this.products,
        sellerName: sellerName ?? this.sellerName,
        totalDeposit: totalDeposit ?? this.totalDeposit,
        customer: customer ?? this.customer,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        city: city ?? this.city,
        address: address ?? this.address);
  }

  static Record defaultInstance({
    required PaymentTypes paymentType,
    required int timeStamp,
  }) {
    return Record(
      payementType: paymentType.name,
      date: Utility.getDate(),
      timeStamp: Record.purchaseTimeStamp,
      remainingPayement: 0.0,
      totalQuantity: 0,
      payementTypeIndex: paymentType.index,
      totalPrice: 0.0,
      products: {},
      sellerName: '',
      totalDeposit: 0.0,
      customer: '',
    );
  }

  static defaultDepositInstance() {
    return Record(
      payementType: PaymentTypes.deposit.name,
      date: Utility.getDate(),
      timeStamp: Utility.getTimeStamp(),
      remainingPayement: 0.0,
      totalQuantity: 0,
      payementTypeIndex: PaymentTypes.deposit.index,
      totalPrice: 0.0,
      products: {},
      sellerName: '',
      totalDeposit: 0.0,
      customer: '',
    );
  }

  static defaultPurchaseInstance() {
    return Record(
      payementType: PaymentTypes.payement.name,
      date: Utility.getDate(),
      timeStamp: Utility.getTimeStamp(),
      remainingPayement: 0.0,
      totalQuantity: 0,
      payementTypeIndex: PaymentTypes.payement.index,
      totalPrice: 0.0,
      products: {},
      sellerName: '',
      totalDeposit: 0.0,
      customer: '',
    ); 
  }
}


class CustomerDataHolder {
  CustomerDataHolder({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.city,
    required this.postalCode,
  });

  String name;
  int phoneNumber;
  String address;
  String city;
  int postalCode;

  static CustomerDataHolder defaultInstance() {
    return CustomerDataHolder(
        name: '',
        phoneNumber: 0,
        address: '',
        city: '',
        postalCode: 0);
  }

  CustomerDataHolder copyWith({
    String? name,
    int? phoneNumber,
    String? address,
    String? city,
    int? postalCode,
  }) {
    return CustomerDataHolder(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
    );
  }
}
