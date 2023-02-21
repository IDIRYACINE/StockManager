import 'package:stock_manager/DataModels/models.dart';

class PurchaseEvent {}

class AddPurchaseProduct extends PurchaseEvent{}

class RemovePurchaseProduct extends PurchaseEvent{
  final String productTimeStamp;
  RemovePurchaseProduct(this.productTimeStamp);
}

class ClearPurchase extends PurchaseEvent{}

class SearchQuickPurchase extends PurchaseEvent{}

class SearchPurchase extends PurchaseEvent{
  final String productCode;
  SearchPurchase(this.productCode);
}


class RegisterPurchase extends PurchaseEvent{}


class UpdatePurchaseCustomer extends PurchaseEvent {
  CustomerDataHolder customerDataHolder;
  UpdatePurchaseCustomer(this.customerDataHolder);
}


class LoadPurchaseProduct extends PurchaseEvent {
  final Product product;
  LoadPurchaseProduct(this.product);
}