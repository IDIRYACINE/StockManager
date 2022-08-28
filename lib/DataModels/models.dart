
import 'package:realm/realm.dart';
import 'package:stock_manager/DataModels/metadata.dart';

@RealmModel()
class ProductModels{
  late String color;
  Map<ProductsSizes,int> size = {ProductsSizes.s:1};
  late int totalQuantity;
}


@RealmModel()
class Product{
  late String reference;
  late int barcode;
  late String name;
  late double minSellingPrice;
  late double buyingPrice;
  late double sellingPrice;
  late int totalQuantity;
  late ProductModels models;
  late int categoryId;
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