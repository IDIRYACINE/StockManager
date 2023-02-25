
import 'package:stock_manager/Domain/Models/transaction.dart';

Record updateRecordAmounts(Record record , bool isAdd , RecordProduct product){
  final newDepositRecord = record.copyWith(
    totalQuantity: record.totalQuantity + (isAdd ? 1 : -1),
    remainingPayement: record.remainingPayement + (isAdd ? product.remainingPayement : -product.remainingPayement),
    totalPrice: record.totalPrice + (isAdd ? product.sellingPrice : -product.sellingPrice),
    totalDeposit: record.totalDeposit + (isAdd ? product.deposit : -product.deposit),
  );

  return newDepositRecord;
}

Record clearPurchase(Record record){
  final newDepositRecord = record.copyWith(
    totalQuantity: 0,
    remainingPayement: 0,
    totalPrice: 0,
    totalDeposit: 0,
    products: {},
  );

  return newDepositRecord;
}