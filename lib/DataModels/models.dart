import 'package:stock_manager/DataModels/metadata.dart';

class ProductModel {
  ProductModel({
    this.color = 'black',
    this.size = 's',
    this.quantity = 1,
  });

  String color;
  String size;
  int quantity;
}

class Product {
  Product(
      {required this.barcode,
      required this.name,
      required this.productFamily,
      required this.originalPrice,
      required this.sellingPrice,
      required this.reference,
      required this.totalQuantity,
      required this.models,
      required this.imageUrl});

  String reference;
  int barcode;
  String name;
  double originalPrice;
  String? imageUrl;
  double sellingPrice;
  int totalQuantity;
  List<ProductModel> models;
  String productFamily;

  static Product defaultInstance() {
    return Product(
      barcode: 0,
      name: '',
      productFamily: '',
      originalPrice: 0,
      sellingPrice: 0,
      reference: '',
      totalQuantity: 0,
      models: [ProductModel()],
      imageUrl: null,
    );
  }
}

class Record {
  Record({
    required this.payementType,
    required this.timeStamp,
    this.date,
    required this.sellerName ,
    required this.product,
    required this.productColor ,
    required this.productSize ,
    required this.barcode ,
    required this.reference,
    this.customer,
    this.deposit,
    this.remainingPayement,
    required this.quantity ,
    required this.originalPrice,
    required this.sellingPrice ,
  });

  String? date = (DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month}-${dateTime.day}';
  }(DateTime.now());

  int timeStamp;
  String sellerName;
  String product;
  String productSize;
  String productColor;
  int quantity;
  double originalPrice;
  double sellingPrice;
  double? deposit;
  double? remainingPayement;
  String? customer;
  String payementType;
  int barcode;
  String reference;

  // dart Record copyWith
  Record copyWith({
    String? payementType,
    int? timeStamp,
    String? sellerName,
    String? product,
    String? productColor,
    String? date,
    String? productSize,
    int? barcode,
    String? reference,
    String? customer,
    double? deposit,
    double? remainingPayement,
    int? quantity,
    double? originalPrice,
    double? sellingPrice,
  }) {
    return Record(
      date : date?? this.date,
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
    );
  }

  static Record defaultInstance({required String payementType , required int timeStamp}){
     return Record (
    payementType: payementType,
    timeStamp : timeStamp,
    sellerName : '',
    product : '',
    productColor : '',
    productSize : '',
    barcode : 0,
    reference : '',
    customer : '',
    deposit : 0,
    remainingPayement : 0,
    quantity : 1,
    originalPrice : 0,
    sellingPrice : 0,)
  ;
}
}

class Seller {
  String name;
  int phone;
  String imageUrl;

  Seller({required this.name, required this.phone, required this.imageUrl});

  Seller copyWith({
    String? name,
    int? phone,
    String? imageUrl,
  }) {
    return Seller(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      imageUrl: imageUrl ?? this.imageUrl,
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
  });

  String reference;
  String product;
  String productSize;
  String productColor;
  double sellingPrice;

  static OrderProduct defaultInstance() {
    return OrderProduct(
      product: '',
      productColor: '',
      productSize: '',
      reference: '',
      sellingPrice: 0,
    );
  }

  OrderProduct copyWith({
    String? product,
    String? productColor,
    String? productSize,
    String? reference,
    double? sellingPrice,
  }) {
    return OrderProduct(
      product: product ?? this.product,
      productColor: productColor ?? this.productColor,
      productSize: productSize ?? this.productSize,
      reference: reference ?? this.reference,
      sellingPrice: sellingPrice ?? this.sellingPrice,
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
    this.date,
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
    required this.sellingPrice,
    required this.deliverToHome,
    required this.deliveryCost,
  });
  

  String? date = (DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month}-${dateTime.day}';
  }(DateTime.now());

  int? timeStamp;
  String sellerName;
  List<OrderProduct> products;
  int quantity;
  double deposit;
  OrderStatus status;
  double? remainingPayement;
  double deliveryCost;
  bool deliverToHome;
  double sellingPrice;
  String customerName;
  int? phoneNumber;
  String address;
  String city;
  int postalCode;

  static Order defaultInstance() {
    return Order(
        products: [],
        status: OrderStatus.canceled,
        quantity: 0,
        sellerName: '',
        customerName: '',
        phoneNumber: 0,
        address: '',
        city: '',
        postalCode: 0,
        deposit: 0,
        sellingPrice: 0,
        deliverToHome: true,
        deliveryCost: 0,
        timeStamp: 0
        );
  }

  Order copyWith({
    List<OrderProduct>? products,
    String? date,
    OrderStatus? status,
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
  }) {
    return Order(
      products: products ?? this.products,
      status: status ?? this.status,
      quantity: quantity ?? this.quantity,
      sellerName: sellerName ?? this.sellerName,
      customerName: customerName ?? this.customerName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      deposit: deposit ?? this.deposit,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      deliverToHome: deliverToHome ?? this.deliverToHome,
      deliveryCost: deliveryCost ?? this.deliveryCost,
      timeStamp: timeStamp ?? this.timeStamp,
    );
  }
}
