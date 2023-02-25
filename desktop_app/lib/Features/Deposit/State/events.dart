
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';

class DepositEvent {}

class LoadDepositProduct extends DepositEvent {
  final Product product;
  LoadDepositProduct(this.product);
}

class AddDepositProduct extends DepositEvent {
  final RecordProduct product;

  AddDepositProduct(this.product);

}

class RemoveDepositProduct extends DepositEvent {
  final String productTimeStamp;
  RemoveDepositProduct(this.productTimeStamp);
}

class UpdateDepositCustomer extends DepositEvent {
  CustomerDataHolder customerDataHolder;
  UpdateDepositCustomer(this.customerDataHolder);
}

class ClearDeposit extends DepositEvent {}

class SearchQuickDeposit extends DepositEvent {}

class SearchDeposit extends DepositEvent {}

class SearchDepositProduct extends DepositEvent {
  final String productCode;
  SearchDepositProduct(this.productCode);
}

class RegisterDeposit extends DepositEvent {}
