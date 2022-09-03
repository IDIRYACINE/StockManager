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
      required this.models ,
      required this.imageUrl});

  String reference;
  int barcode;
  String name;
  double originalPrice;
  String? imageUrl;
  double sellingPrice;
  int totalQuantity;
  List<ProductModel> models ;
  String productFamily;

  static Product defaultInstance (){
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
    required this.timestamp,
    this.sellerName = '',
    this.product = '',
    this.productColor = '',
    this.productSize = '',
    this.barcode = '',
    this.reference = '',
    this.customer,
    this.deposit,
    this.remainingPayement,
    this.quantity = 1,
    this.originalPrice = 0,
    this.sellingPrice = 0,
  });

  String date = (DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month}-${dateTime.day}';
  }(DateTime.now());

  String timestamp;
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
  String barcode;
  String reference;

  
}

class Seller {
  String name;
  int phone;
  String imageUrl;

  Seller({required this.name, required this.phone, required this.imageUrl});
}

class ProductFamily {
  String name;
  String reference;
  String? imageUrl;

  ProductFamily({required this.name, required this.reference, this.imageUrl});
}

class OrderProduct {

  OrderProduct({
    required this.product,
    required this.quantity,
    required this.productColor,
    required this.productSize,
  });

  String product;
  String productSize;
  String productColor;
  int quantity;
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
    required this.customer,
    required this.products,
    required this.date,
    required this.status,
    required this.quantity,
    required this.sellerName,
  });

  DateTime date;
  String sellerName;
  List<OrderProduct> products;
  int quantity;
  OrderStatus status;
  Customer customer;

}
