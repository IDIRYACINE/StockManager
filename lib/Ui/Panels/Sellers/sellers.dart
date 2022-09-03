import 'package:flutter/material.dart';

import 'actions_card.dart';
import 'sellers_table.dart';

class SellersPanel extends StatelessWidget {
  const SellersPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
            Expanded(flex: upperRowFlex, child: const ActionsCard()),

      Expanded(
        flex: lowerRowFlex,
        child: const SellersTable(),
      ),
      Expanded(flex: upperRowFlex, child: const SellersFloatingActions()),
    ]);
  }
}
