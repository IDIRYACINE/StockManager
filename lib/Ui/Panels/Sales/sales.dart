import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Application/Controllers/sales_controller.dart';
import 'package:stock_manager/Ui/Panels/Sales/price_card.dart';
import 'package:stock_manager/Ui/Panels/Sales/sales_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'actions_card.dart';

class SalesPanel extends StatelessWidget {
  final int spaceFlex = 1;
  final int lowerRowFlex = 2;
  final int upperRowFlex = 1;
  final int priceCardFlex = 8;
  final int actionsCardFlex = 4;

  const SalesPanel({Key? key}) : super(key: key);

  void onAdd(BuildContext context, SalesController controller) {
    controller.addSaleProduct(context);
  }

  void onClear(BuildContext context, SalesController controller) {
    controller.clearSales(context);
  }

  void onPrint(BuildContext context, SalesController controller) {
    controller.printPurchases(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      Expanded(
        flex: upperRowFlex,
        child: Padding(
          padding: const EdgeInsets.all(Measures.paddingLarge),
          child: Row(
            children: [
              Expanded(flex: priceCardFlex, child: const PriceCard()),
              Spacer(
                flex: spaceFlex,
              ),
              Expanded(
                flex: actionsCardFlex,
                child: const ActionsCard(),
              )
            ],
          ),
        ),
      ),
      Expanded(
        flex: lowerRowFlex,
        child: const Padding(
          padding: EdgeInsets.all(Measures.paddingLarge),
          child: SalesSpreadedTable(),
        ),
      )
    ]);
  }
}
