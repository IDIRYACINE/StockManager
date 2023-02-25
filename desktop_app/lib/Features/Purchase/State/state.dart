import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

class PurchaseState {
  static const _payementType = PaymentTypes.payement;


  static int _generateTimeStamp() => DateTime.now().millisecondsSinceEpoch;

  final Record activePurchaseRecord;
  late Product loadedProduct;
  late ProductFormEditor productFormEditor;
  late double totalPrice;


  PurchaseState(
      {required this.activePurchaseRecord,
      RecordProduct? activePurchaseProduct,
      ProductFormEditor? productFormEditor,
      this.totalPrice = 0,
      Product? loadedProduct}) {
    this.loadedProduct = loadedProduct ?? Product.defaultInstance();
    this.productFormEditor = productFormEditor ?? ProductFormEditor();
  }

  factory PurchaseState.initial() {
    return PurchaseState(
        activePurchaseRecord: Record.defaultInstance(
            paymentType: _payementType, timeStamp: _generateTimeStamp()));
  }

  PurchaseState copyWith(
      {Record? activePurchaseRecord,
      Product? loadedProduct,
      ProductFormEditor? productFormEditor}) {
    return PurchaseState(
      activePurchaseRecord: activePurchaseRecord ?? this.activePurchaseRecord,
      loadedProduct: loadedProduct ?? this.loadedProduct,
      productFormEditor: productFormEditor ?? this.productFormEditor,
    );
  }
}
