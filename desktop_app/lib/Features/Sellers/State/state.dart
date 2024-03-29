import 'package:stock_manager/Domain/Models/seller.dart';

class SellersState {
  late List<Seller> _sellers;

  SellersState({required List<Seller> sellers}) {
    _sellers = sellers;
  }

  factory SellersState.initial() {
    return SellersState(sellers: []);
  }

  get sellersCount => _sellers.length;

  Seller seller(int index) {
    return _sellers[index].copyWith();
  }

  SellersState copyWith({List<Seller>? sellers}) {
    return SellersState(
      sellers: sellers ?? _sellers,
    );
  }

  List<Seller> removeSeller(Seller seller) {
    final sellers = _sellers
        .where((element) => element.sellerCode != seller.sellerCode)
        .toList();
    return sellers;
  }

  List<Seller> addSeller(Seller seller) {
    final sellers = _sellers.map((e) => e).toList();
    sellers.add(seller);
    return sellers;
  }

  List<Seller> replaceSeller(Seller seller) {
    final sellers = _sellers.map((e) {
      if (e.sellerCode == seller.sellerCode) {
        return seller;
      }
      return e;
    }).toList();
    return sellers;
  }
}
