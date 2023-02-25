import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';

class PurchaseEvent {}

class AddPurchaseProduct extends PurchaseEvent {
  final RecordProduct product;

  AddPurchaseProduct(this.product);
}

class RemovePurchaseProduct extends PurchaseEvent {
  final String productTimeStamp;
  RemovePurchaseProduct(this.productTimeStamp);
}

class ClearPurchase extends PurchaseEvent {}

class SearchQuickPurchase extends PurchaseEvent {}

class SearchPurchase extends PurchaseEvent {
  final String productCode;
  SearchPurchase(this.productCode);
}

class RegisterPurchase extends PurchaseEvent {}

class UpdatePurchaseCustomer extends PurchaseEvent {
  CustomerDataHolder customerDataHolder;
  UpdatePurchaseCustomer(this.customerDataHolder);
}

class LoadPurchaseProduct extends PurchaseEvent {
  final Product product;
  LoadPurchaseProduct(this.product);
}
