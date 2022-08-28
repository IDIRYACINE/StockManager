
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_editor.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_editor.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders.dart';
import 'package:stock_manager/Ui/Panels/Records/records.dart';
import 'package:stock_manager/Ui/Panels/Sales/sales.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock.dart';

class NavigationStore with ChangeNotifier {

  final ValueNotifier<int> _selectedPanelIndex = ValueNotifier(0);

  final List<Widget> _panels = [
    const SalesPanel(),
    const OrdersPanel(),
    const StockPanel(),
    const RecordsPanel(),
    const SaleEditor(),
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
