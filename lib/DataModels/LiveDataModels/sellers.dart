import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class SellersLiveDataModel with ChangeNotifier {
  final List<Seller> loadedSellers = [];

  int get sellersCount => loadedSellers.length;

  Seller seller(int index) => loadedSellers[index];

  Seller get selectedSeller => loadedSellers[selectedIndex];

  int selectedIndex = 0;

  VoidCallback? updateRowCallback;

  final ValueNotifier<bool> _refreshSellers = ValueNotifier(false);

  ValueListenable<bool> get refreshSellers => _refreshSellers;

  void _toggleRefresh() {
    _refreshSellers.value = !_refreshSellers.value;
  }

  void add(Seller element) {
    loadedSellers.add(element);
    _toggleRefresh();
  }

  void clear() {
    loadedSellers.clear();
    _toggleRefresh();
  }

  void remove(Seller element) {
    loadedSellers.remove(element);
    _toggleRefresh();
  }

  void setAll(Iterable<Seller> elements) {
    loadedSellers.clear();
    loadedSellers.addAll(elements);
    _toggleRefresh();
  }

  void update(Seller seller) {
    if (updateRowCallback != null) {
      loadedSellers[selectedIndex] = seller;
      updateRowCallback!();
    }
  }
}
