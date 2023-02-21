import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';

class DepositState {
  static const _payementType = PaymentTypes.deposit;

  static int _generateTimeStamp() => DateTime.now().millisecondsSinceEpoch;

  final Record activeDepositRecord;

  DepositState({required this.activeDepositRecord});

  factory DepositState.initial() {
    return DepositState(
        activeDepositRecord: Record.defaultInstance(
            paymentType: _payementType, timeStamp: _generateTimeStamp()));
  }

  DepositState copyWith({Record? activeDepositRecord}) {
    return DepositState(
        activeDepositRecord: activeDepositRecord ?? this.activeDepositRecord);
  }

}
