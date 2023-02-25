import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';

abstract class SaleEditorMode<T> {
  final TextEditingController nameController = TextEditingController(text: '');

  final TextEditingController referenceController =
      TextEditingController(text: '');

  final TextEditingController familyController =
      TextEditingController(text: '');

  final TextEditingController minSellingPriceController =
      TextEditingController(text: '');

  final TextEditingController sellingPriceController =
      TextEditingController(text: '');

  final TextEditingController depositController =
      TextEditingController(text: '');

  final TextEditingController remainingPaymenentController =
      TextEditingController(text: '');

  final TextEditingController remainingQuantity =
      TextEditingController(text: '');

  bool _invalidProduct = false;

  bool get isInvalidProduct => _invalidProduct;

  void setSellingPrice(String? price);

  void setColor(String color, String colorId);

  void setSize(String size, String sizeId);

  void setDeposit(String? deposit);

  void setRemainingPayement(String? remainingPayement);

  void setProduct(Product product);

  RecordProduct getRecordProduct();

  static SaleEditorMode<Record> createModeInstance() {
    return _ModeCreate();
  }
}

class _ModeCreate extends SaleEditorMode<Record> {
  RecordProduct recordProduct = RecordProduct.defaultInstance();

  _ModeCreate();

  @override
  void setSellingPrice(String? price) {
    if (price != null) {
      double parsedPrice = double.parse(price);
      double priceChange = parsedPrice - recordProduct.sellingPrice;

      recordProduct.sellingPrice = parsedPrice;
      recordProduct.remainingPayement += priceChange;
    }
  }

  @override
  void setColor(String color, String colorId) {
    recordProduct.color = color;
    recordProduct.colorId = colorId;
  }

  @override
  void setSize(String size, String sizeId) {
    recordProduct.size = size;
    recordProduct.sizeId = sizeId;
  }

  @override
  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      recordProduct.remainingPayement = double.tryParse(remainingPayement) ?? 0;
      remainingPaymenentController.text = remainingPayement;
    }
  }

  @override
  void setDeposit(String? deposit) {
    if (deposit != null && deposit != "") {
      double parsedDeposit = double.parse(deposit);
      double depositChange = parsedDeposit - recordProduct.deposit;

      recordProduct.deposit = parsedDeposit;
      recordProduct.remainingPayement -= depositChange;

      remainingPaymenentController.text =
          recordProduct.remainingPayement.toString();
    }
  }

  @override
  void setProduct(Product product) {
    if (_isProductModelInvalid(product)) {
      _invalidProduct = true;
      return;
    }

    _invalidProduct = false;

    final firstProductModel = product.models.entries.first;

    final firstModelSize = firstProductModel.value.sizes.entries.first;

    final recordProduct = RecordProduct(
      product: product.name,
      reference: product.reference,
      sellingPrice: product.sellingPrice,
      deposit: 0,
      remainingPayement: product.sellingPrice,
      color: firstProductModel.value.color,
      colorId: firstProductModel.value.id,
      size: firstModelSize.value.size,
      sizeId: firstModelSize.key,
      timeStamp: Utility.getTimeStamp().toString(),
    );

    this.recordProduct = recordProduct;
  }

  @override
  RecordProduct getRecordProduct() {
    final result =
        recordProduct.copyWith(timeStamp: Utility.getTimeStamp().toString());
    recordProduct =
        recordProduct.copyWith(timeStamp: Utility.getTimeStamp().toString());

    return result;
  }

  bool _isProductModelInvalid(Product product) {
    return (product.models.isEmpty) ||
        (product.models.entries.first.value.sizes.isEmpty);
  }
}
