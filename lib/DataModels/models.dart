
import 'package:stock_manager/DataModels/metadata.dart';

class ProductModel{
  String color = '';
  ProductsSizes size = ProductsSizes.s;
  int quantity = 1;
}


class Product{
  String reference = '';
  int barcode = 0;
  String name = '';
  double originalPrice = 0;
  double sellingPrice = 0;
  int totalQuantity = 0;
  List<ProductModel> models = [ProductModel()];
  String productFamily = '';
}


class Record{
  DateTime date = DateTime.now();
  String sellerName = '';
   String product = '';
   String productSize = '';
   String productColor ='';
   int quantity = 0;
   double originalPrice = 0;
   double sellingPrice = 0;
}


class Seller{
  String name ='';
   int phone = 0;
   String imageUrl =  '';
}


class ProductFamily{
  late String name;
  String? imageUrl;
}

class OrderProduct{
  late String product;
  late String productSize;
  late String productColor;
  late int quantity;
}


class Customer{
  late String name;
  int? phoneNumber;
  late String address;
  late String city;
  late int postalCode;
}

class Order{
  late DateTime date;
  late String sellerName;
  late List<OrderProduct> products;
  late int quantity;
  late OrderStatus status;
  late Customer customer;
}