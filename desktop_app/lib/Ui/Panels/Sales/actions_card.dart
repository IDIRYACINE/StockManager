import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:stock_manager/Features/Purchase/Logic/sales_controller.dart';
import 'package:stock_manager/Features/Purchase/State/purchase.dart';
import 'package:stock_manager/Ui/Generics/action_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

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
    final bloc = BlocProvider.of<PurchaseBloc>(context);
    SalesController controller = SalesController(bloc);

    return Card(
      elevation: Measures.small,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: ActionButton(
              onPressed: () {
                onAdd(context, controller);
              },
              label: Translations.of(context)!.add,
              icon: Icons.add,
            ),
          ),
          Flexible(
            child: ActionButton(
              onPressed: () {
                onClear(context, controller);
              },
              label: Translations.of(context)!.clear,
              icon: Icons.clear,
            ),
          ),
          Flexible(
            child: ActionButton(
              onPressed: () {
                onPrint(context, controller);
              },
              label: Translations.of(context)!.print,
              icon: Icons.print,
            ),
          ),
        ],
      ),
    );
  }
}
