import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'actions_card.dart';
import 'sellers_table.dart';

class SellersPanel extends StatelessWidget {
  const SellersPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        Expanded(
          flex: lowerRowFlex,
          child: const SellersTable(),
        ),
        Expanded(flex: upperRowFlex, child: const SellersFloatingActions()),
      ]),
    );
  }
}
