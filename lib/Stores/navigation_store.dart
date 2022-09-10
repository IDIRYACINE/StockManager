import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:stock_manager/Ui/Panels/Deposits/deposits.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders.dart';
import 'package:stock_manager/Ui/Panels/Records/records.dart';
import 'package:stock_manager/Ui/Panels/Sales/sales.dart';
import 'package:stock_manager/Ui/Panels/Sellers/sellers.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock.dart';

class NavigationStore with ChangeNotifier {
  final ValueNotifier<int> _selectedPanelIndex = ValueNotifier(0);

  final List<Widget> _panels = [];
  final List<IconData> _panelIcons = [
    Icons.shopping_cart ,
   Icons.house,
   Icons.monetization_on,
   Icons.online_prediction_rounded,
   Icons.receipt_long,
   Icons.group,

   ];

  // ignore: unused_field
  static const int salesIndex = 0,
      stockIndex = 1,
      depositsIndex = 2,
      ordersIndex = 3,
      recordsIndex = 4,
      sellersIndex = 5;

  void init() {
    _panels.add(const SalesPanel());
    _panels.add(const StockPanel());
    _panels.add(const DepositsPanel());
    _panels.add(const OrdersPanel());
    _panels.add(const RecordsPanel());
    _panels.add(const SellersPanel());
  }

  ValueListenable<int> get selectedIndex => _selectedPanelIndex;

  Widget getSelectedPanel() {
    return _panels[_selectedPanelIndex.value];
  }

  void navigateToPanel(int index) {
    _selectedPanelIndex.value = index;
    notifyListeners();
  }

  IconData? getSelectedPanelIcon(int index) =>_panelIcons[index];
}
