
import 'package:realm/realm.dart';
import 'package:stock_manager/DataModels/metadata.dart';

@RealmModel()
class ProductModel{
  String color = '';
  ProductsSizes size = ProductsSizes.s;
  int quantity = 1;
}


@RealmModel()
class Product{
  String reference = '';
  int barcode = 0;
  String name = '';
  double minSellingPrice = 0;
  double buyingPrice = 0;
  double sellingPrice = 0;
  int totalQuantity = 0;
  List<ProductModel> models = [ProductModel()];
  String productFamily = '';
}


@RealmModel()
class Record{
  late DateTime date;
  late String sellerName;
  late String product;
  late String productSize;
  late String productColor;
  late int quantity;
  late double buyingPrice;
  late double sellingPrice;
}


@RealmModel()
class Seller{
  late String name;
  late int phone;
  late String imageUrl;
}


@RealmModel()
class ProductFamily{
  late String name;
  String? imageUrl;
}

@RealmModel()
class OrderProduct{
  late String product;
  late String productSize;
  late String productColor;
  late int quantity;
}


@RealmModel()
class Customer{
  late String name;
  int? phoneNumber;
  late String address;
  late String city;
  late int postalCode;
}

@RealmModel()
class Order{
  late DateTime date;
  late String sellerName;
  late List<OrderProduct> products;
  late int quantity;
  late OrderStatus status;
  late Customer customer;
}