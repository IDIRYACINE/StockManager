import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Panels/Stock/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class StockPanel extends StatelessWidget {
  const StockPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
       SearchActionsCard(),
                const SizedBox(height: Measures.large),

        Expanded(
          flex: lowerRowFlex,
          child: const StockTable(),
        ),
      ]),
    );
  }
}
