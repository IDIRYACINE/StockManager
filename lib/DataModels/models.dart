import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/metadata.dart';
import 'package:stock_manager/Types/special_enums.dart';

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

class Record {
  Record({
    required this.payementType,
    required this.payementTypeIndex,
    required this.timeStamp,
    required this.date,
    required this.sellerName,
    required this.product,
    required this.productColor,
    required this.productSize,
    required this.barcode,
    required this.reference,
    required this.colorId,
    required this.sizeId,
    required this.deposit,
    required this.remainingPayement,
    required this.quantity,
    required this.originalPrice,
    required this.sellingPrice,
    this.customer,
    this.address,
    this.city,
    this.phoneNumber,
  });

  DateTime date;
  int timeStamp;
  String sellerName;
  String product;
  String productSize;
  String productColor;
  String colorId;
  String sizeId;
  int quantity;
  int? phoneNumber;
  String? city;
  String? address;
  double originalPrice;
  double sellingPrice;
  double deposit;
  double remainingPayement;
  String? customer;
  String payementType;
  int payementTypeIndex;
  int barcode;
  String reference;

  // we use this as an identifier to query transactions of the same payment
  static int saleTimeStampId = 0;
  static void generateSaleId() {
    saleTimeStampId = DateTime.now().millisecondsSinceEpoch;
  }

  static int depositTimeStampId = 0;
  static void generateDepositId() {
    depositTimeStampId = DateTime.now().millisecondsSinceEpoch;
  }

  // dart Record copyWith
  Record copyWith({
    String? payementType,
    int? payementTypeIndex,
    int? timeStamp,
    String? sellerName,
    String? product,
    String? productColor,
    DateTime? date,
    String? productSize,
    int? barcode,
    String? reference,
    String? customer,
    double? deposit,
    double? remainingPayement,
    int? quantity,
    double? originalPrice,
    double? sellingPrice,
    String? colorId,
    String? sizeId,
  }) {
    return Record(
      date: date ?? this.date,
      payementType: payementType ?? this.payementType,
      timeStamp: timeStamp ?? this.timeStamp,
      originalPrice: originalPrice ?? this.originalPrice,
      quantity: quantity ?? this.quantity,
      sellerName: sellerName ?? this.sellerName,
      deposit: deposit ?? this.deposit,
      reference: reference ?? this.reference,
      customer: customer ?? this.customer,
      barcode: barcode ?? this.barcode,
      product: product ?? this.product,
      productColor: productColor ?? this.productColor,
      productSize: productSize ?? this.productSize,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      remainingPayement: remainingPayement ?? this.remainingPayement,
      colorId: colorId ?? this.colorId,
      sizeId: sizeId ?? this.sizeId,
      payementTypeIndex: payementTypeIndex ?? this.payementTypeIndex,
    );
  }

  static Record defaultInstance({
    required PaymentTypes paymentType,
    required int timeStamp,
  }) {
    return Record(
      payementType: paymentType.name,
      date: Utility.getDate(),
      timeStamp: Record.saleTimeStampId,
      sellerName: '',
      product: '',
      productColor: '',
      productSize: '',
      barcode: 0,
      reference: '',
      customer: '',
      deposit: 0.0,
      remainingPayement: 0.0,
      quantity: 1,
      originalPrice: 0.0,
      sellingPrice: 0.0,
      colorId: '',
      sizeId: '',
      payementTypeIndex: paymentType.index,
    );
  }
}

class Seller {
  int sellerCode;
  String name;
  int phone;
  String imageUrl;

  Seller(
      {required this.sellerCode,
      required this.name,
      required this.phone,
      required this.imageUrl});

  Seller copyWith({
    String? name,
    int? phone,
    String? imageUrl,
  }) {
    return Seller(
      sellerCode: sellerCode,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  static Seller defaultInstance() {
    return Seller(
      sellerCode: Utility.getTimeStamp(),
      name: '',
      phone: 0,
      imageUrl: '',
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

class OrderProduct {
  OrderProduct({
    required this.product,
    required this.productColor,
    required this.productSize,
    required this.reference,
    required this.sellingPrice,
    required this.buyingPrice,
    required this.productSizeId,
    required this.productColorId,
    required this.timeStamp,
  });

  String reference;
  double buyingPrice;
  String product;
  String productSize;
  String productColor;
  String productSizeId;
  String productColorId;
  double sellingPrice;
  String timeStamp;

  static OrderProduct defaultInstance() {
    return OrderProduct(
      product: '',
      productColor: '',
      productSize: '',
      reference: '',
      sellingPrice: 0,
      buyingPrice: 0,
      productColorId: '',
      productSizeId: '',
      timeStamp: Utility.getTimeStamp().toString(),
    );
  }

  OrderProduct copyWith({
    String? product,
    String? productColor,
    String? productSize,
    String? reference,
    double? sellingPrice,
    double? buyingPrice,
    String? productSizeId,
    String? productColorId,
    String? timeStamp,
  }) {
    return OrderProduct(
      product: product ?? this.product,
      productColor: productColor ?? this.productColor,
      productSize: productSize ?? this.productSize,
      reference: reference ?? this.reference,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      buyingPrice: buyingPrice ?? this.buyingPrice,
      productColorId: productColorId ?? this.productColorId,
      productSizeId: productSizeId ?? this.productColorId,
      timeStamp: timeStamp ?? this.timeStamp,
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
  Map<String, OrderProduct> products;
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

  Map<String, OrderProduct> _copyProducts() {
    Map<String, OrderProduct> copyProducts = {};

    products.forEach((key, value) {
      copyProducts[key] = value.copyWith();
    });

    return copyProducts;
  }

  Order copyWith({
    Map<String, OrderProduct>? products,
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
