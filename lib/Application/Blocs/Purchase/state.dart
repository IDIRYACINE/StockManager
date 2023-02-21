import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';

class PurchaseState {
  static const _payementType = PaymentTypes.payement;

  static int _generateTimeStamp() => DateTime.now().millisecondsSinceEpoch;

  final Record activePurchaseRecord;
  final RecordProduct? activePurchaseProduct;
  late Product loadedProduct;

  PurchaseState({required this.activePurchaseRecord, this.activePurchaseProduct, Product? loadedProduct }){
    this.loadedProduct = loadedProduct ?? Product.defaultInstance();
  }

  factory PurchaseState.initial() {
    return PurchaseState(
        activePurchaseRecord: Record.defaultInstance(
            paymentType: _payementType, timeStamp: _generateTimeStamp()));
  }

  PurchaseState copyWith({Record? activePurchaseRecord, RecordProduct? activePurchaseProduct, Product? loadedProduct}) {
    return PurchaseState(
        activePurchaseRecord: activePurchaseRecord ?? this.activePurchaseRecord,
        activePurchaseProduct: activePurchaseProduct ?? this.activePurchaseProduct,
        loadedProduct: loadedProduct ?? this.loadedProduct
        );
  }

}
