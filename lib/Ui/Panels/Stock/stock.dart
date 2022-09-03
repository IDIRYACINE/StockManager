import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Panels/Stock/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock_table.dart';

class StockPanel extends StatelessWidget {
  const StockPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(flex: upperRowFlex, child:  SearchActionsCard()),
      Expanded(
        flex: lowerRowFlex,
        child: const StockTable(),
      ),
      Expanded(flex: upperRowFlex, child: const StockFloatingActions()),
    ]);
  }
}
