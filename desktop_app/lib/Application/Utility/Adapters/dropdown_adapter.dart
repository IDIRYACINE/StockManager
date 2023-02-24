
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Domain/Models/seller.dart';

abstract class DropdownAdapters {



  static DropdownMenuItem<String> stringDropDownMenuItemAdapter(String item , [String? key]) {
    return DropdownMenuItem<String>(value: key ?? item, child: Text(item.toString()));
  }

  static DropdownMenuItem<T> enumDropDownMenuItemAdapter<T>(T item) {
    return DropdownMenuItem<T>(value: item, child: Text((item as Enum).name));
  }

  
 static  DropdownMenuItem<Seller> sellerMenuItemAdapter(Seller seller) {
    return DropdownMenuItem(
      value: seller,
      child: Text(seller.name),
    );
  }

  static 
  DropdownMenuItem<ProductFamily> productFamilyMenuItemAdapter(
      ProductFamily productFamily) {
    return DropdownMenuItem(
      value: productFamily,
      child: Text(productFamily.name),
    );
  }
}