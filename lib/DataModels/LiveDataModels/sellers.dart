import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class SellersLiveDataModel   {
  final List<Seller> loadedSellers = [];

  int get sellersCount => loadedSellers.length;

  Seller seller(int index) => loadedSellers[index];

  Seller get selectedSeller => loadedSellers[selectedIndex];

  int selectedIndex = 0;

  VoidCallback? refreshRowCallback;

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

  void removeAt(int index) {
    loadedSellers.removeAt(index);
    selectedIndex = -1;
    _toggleRefresh();
  }

  void setAll(Iterable<Seller> elements) {
    loadedSellers.clear();
    loadedSellers.addAll(elements);
    _toggleRefresh();
  }

  void update(Seller seller, int index) {
    loadedSellers[index] = seller;
    _toggleRefresh();
  }
}
