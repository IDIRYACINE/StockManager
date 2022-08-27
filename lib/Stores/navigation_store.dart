
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders.dart';
import 'package:stock_manager/Ui/Panels/Sales/sales.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock.dart';

class NavigationStore with ChangeNotifier {

  final ValueNotifier<int> _selectedPanelIndex = ValueNotifier(0);

  final List<Widget> _panels = [
    const SalesPanel(),
    const OrdersPanel(),
    const StockPanel(),
    const Text('Panel 3'),
  ];

  ValueListenable<int> get selectedIndex => _selectedPanelIndex;

  Widget getSelectedPanel() {
    return _panels[_selectedPanelIndex.value];
  }

  void navigateToPanel(int index) {
    _selectedPanelIndex.value = index;
    notifyListeners();
  }
 
}
