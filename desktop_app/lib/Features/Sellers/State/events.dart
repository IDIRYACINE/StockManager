import 'package:stock_manager/Domain/Models/seller.dart';

class SellersEvent{}

class LoadSellersEvent extends SellersEvent{
  final List<Seller> sellers;
  LoadSellersEvent(this.sellers);
}

class RefreshSellers extends SellersEvent{}

class AddSellerEvent extends SellersEvent{
  final Seller seller;
  AddSellerEvent(this.seller);
}

class UpdateSellerEvent extends SellersEvent{
  final Seller seller;
  UpdateSellerEvent(this.seller);
}

class DeleteSellerEvent extends SellersEvent{
  final Seller seller;
  DeleteSellerEvent(this.seller);
}