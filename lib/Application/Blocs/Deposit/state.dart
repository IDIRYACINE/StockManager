import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';

class DepositState {
  static const _payementType = PaymentTypes.deposit;

  static int _generateTimeStamp() => DateTime.now().millisecondsSinceEpoch;

  final Record activeDepositRecord;
  final RecordProduct? activeDepositProduct;
  late Product loadedProduct;

  DepositState({required this.activeDepositRecord, this.activeDepositProduct, Product? loadedProduct }){
    this.loadedProduct = loadedProduct ?? Product.defaultInstance();
  }

  factory DepositState.initial() {
    return DepositState(
        activeDepositRecord: Record.defaultInstance(
            paymentType: _payementType, timeStamp: _generateTimeStamp()));
  }

  DepositState copyWith({Record? activeDepositRecord, RecordProduct? activeDepositProduct, Product? loadedProduct}) {
    return DepositState(
        activeDepositRecord: activeDepositRecord ?? this.activeDepositRecord,
        activeDepositProduct: activeDepositProduct ?? this.activeDepositProduct,
        loadedProduct: loadedProduct ?? this.loadedProduct
        );
  }

}
