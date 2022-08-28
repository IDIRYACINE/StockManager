
// ignore_for_file: unused_element

import 'package:realm/realm.dart';

part 'realm_models.g.dart';

@RealmModel()
class _ProductModel{
  String color = '';
  String size = '';
  int quantity = 1;
}


@RealmModel()
class _Product{
  String reference = '';
  int barcode = 0;
  String name = '';
  double buyingPrice = 0;
  double sellingPrice = 0;
  int totalQuantity = 0;
  List<_ProductModel> models = [_ProductModel()];
  String productFamily = '';
}


@RealmModel()
class _Record{
  String date = '';
  String sellerName = '';
  String product = '';
  String productSize = '';
  String productColor ='';
  int quantity = 0;
  double buyingPrice = 0;
  double sellingPrice = 0;
}


@RealmModel()
class _Seller{
  String name ='';
   int phone = 0;
   String imageUrl =  '';
}


@RealmModel()
class _ProductFamily{
  late String name;
  String? imageUrl;
}

@RealmModel()
class _OrderProduct{
  late String product;
  late String productSize;
  late String productColor;
  late int quantity;
}


@RealmModel()
class _Customer{
  late String name;
  int? phoneNumber;
  late String address;
  late String city;
  late int postalCode;
}

@RealmModel()
class _Order{
  late String date;
  late String sellerName;
  late List<_OrderProduct> products;
  late int quantity;
  late String status;
  _Customer? customer;
}

