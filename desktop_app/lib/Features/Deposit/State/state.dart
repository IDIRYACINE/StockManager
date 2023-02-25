import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

class DepositState {
  static const _payementType = PaymentTypes.deposit;

  static int _generateTimeStamp() => DateTime.now().millisecondsSinceEpoch;

  final Record activeDepositRecord;
  late Product loadedProduct;
  late ProductFormEditor formEditor;

  DepositState(
      {required this.activeDepositRecord,
      ProductFormEditor? formEditor,
      Product? loadedProduct}) {
    this.loadedProduct = loadedProduct ?? Product.defaultInstance();
    this.formEditor = formEditor ?? ProductFormEditor();
  }

  factory DepositState.initial() {
    return DepositState(
        activeDepositRecord: Record.defaultInstance(
            paymentType: _payementType, timeStamp: _generateTimeStamp()));
  }

  DepositState copyWith(
      {Record? activeDepositRecord,
      ProductFormEditor? formEditor,
      Product? loadedProduct}) {
    return DepositState(
        activeDepositRecord: activeDepositRecord ?? this.activeDepositRecord,
        loadedProduct: loadedProduct ?? this.loadedProduct,
        formEditor: formEditor ?? this.formEditor);
  }
}
