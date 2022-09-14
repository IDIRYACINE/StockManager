import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sales_controller.dart';
import 'package:stock_manager/Ui/Generics/action_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  void onAdd(BuildContext context, SalesController controller) {
    controller.add(context);
  }

  void onClear(BuildContext context, SalesController controller) {
    controller.clear(context);
  }

  void onPrint(BuildContext context, SalesController controller) {
    controller.printPurchases(context);
  }

  @override
  Widget build(BuildContext context) {
    SalesController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .salesController;

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
              label: Translations.of(context).add,
              icon: Icons.add,
            ),
          ),
          Flexible(
            child: ActionButton(
              onPressed: () {
                onClear(context, controller);
              },
              label: Translations.of(context).clear,
              icon: Icons.clear,
            ),
          ),
          Flexible(
            child: ActionButton(
              onPressed: () {
                onPrint(context, controller);
              },
              label: Translations.of(context).print,
              icon: Icons.print,
            ),
          ),
        ],
      ),
    );
  }
}
