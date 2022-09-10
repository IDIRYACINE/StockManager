import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Panels/Records/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Records/records_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class RecordsPanel extends StatelessWidget {
  const RecordsPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        Expanded(flex: upperRowFlex, child: SearchActionsCard()),
        const SizedBox(height: Measures.paddingLarge),
        Expanded(
          flex: lowerRowFlex,
          child: const RecordsTable(),
        ),
      ]),
    );
  }
}
