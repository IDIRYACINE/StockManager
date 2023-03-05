import 'package:flutter/material.dart';
import 'package:stock_manager/Domain/Models/product.dart';

class ProductFormEditor {
  final TextEditingController productNameController =
      TextEditingController(text: '');

  final TextEditingController barcodeController =
      TextEditingController(text: '');

  final TextEditingController familyController =
      TextEditingController(text: '');

  final TextEditingController minSellingPriceController =
      TextEditingController(text: '');

  final TextEditingController sellingPriceController =
      TextEditingController(text: '');

  final TextEditingController remainingQuantity =
      TextEditingController(text: '');

  final ValueNotifier<String> imageUrlNotifier = ValueNotifier('');

  void updateSelf(Product product) {
    productNameController.text = product.name;
    barcodeController.text = product.barcode.toString();
    familyController.text = product.productFamily;
    minSellingPriceController.text = product.sellingPrice.toString();
    sellingPriceController.text = product.sellingPrice.toString();
    remainingQuantity.text = product.totalQuantity.toString();
    imageUrlNotifier.value = product.imageUrl ?? "";
  }
}
