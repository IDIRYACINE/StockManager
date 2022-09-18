import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:stock_manager/Ui/Panels/Deposits/deposits.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders.dart';
import 'package:stock_manager/Ui/Panels/Records/records.dart';
import 'package:stock_manager/Ui/Panels/Sales/sales.dart';
import 'package:stock_manager/Ui/Panels/Settings/settings_panel.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock.dart';

class NavigationCenter with ChangeNotifier {
  final ValueNotifier<int> _selectedPanelIndex = ValueNotifier(0);

  final List<Widget> _panels = [];
  final List<IconData> _panelIcons = [
    Icons.shopping_cart,
    Icons.house,
    Icons.monetization_on,
    Icons.online_prediction_rounded,
    Icons.receipt_long,
    Icons.settings
  ];

  // ignore: unused_field
  static const int salesIndex = 0,
      stockIndex = 1,
      ordersIndex = 2,
      recordsIndex = 3,
      settingsIndex = 4,
      depositsIndex = 5;

  void init() {
    _panels.add(const SalesPanel());
    _panels.add(const StockPanel());
    _panels.add(const OrdersPanel());
    _panels.add(const RecordsPanel());
    _panels.add(const SettingsPanel());
    _panels.add(const DepositsPanel());
  }

  ValueListenable<int> get selectedIndex => _selectedPanelIndex;

  Widget getSelectedPanel() {
    return _panels[_selectedPanelIndex.value];
  }

  void navigateToPanel(int index) {
    _selectedPanelIndex.value = index;
    notifyListeners();
  }

  IconData? getSelectedPanelIcon(int index) => _panelIcons[index];
}
