import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class SellersLiveDataModel with ChangeNotifier {

  final List<Seller> loadedSellers = [
   
  ];

  int get sellersCount => loadedSellers.length;

  Seller seller(int index) => loadedSellers[index];

  Seller get selectedSeller => loadedSellers[selectedIndex];

  int selectedIndex = 0;

  VoidCallback? updateRowCallback;

  void add(Seller element) {
    loadedSellers.add(element);
    notifyListeners();
  }

  void clear() {
    loadedSellers.clear();
    notifyListeners();
  }

  void remove(Seller element) {
    loadedSellers.remove(element);
    notifyListeners();
  }

  void setAll(Iterable<Seller> elements) {
    loadedSellers.setAll(0, elements);
    notifyListeners();
  }

  void update(Seller seller) {
    if (updateRowCallback != null) {
      loadedSellers[selectedIndex] = seller;
      updateRowCallback!();
    }
  }
}