import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sales_controller.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  void add(BuildContext context, SalesController controller) {
    controller.add(context);
  }

  void clear(BuildContext context, SalesController controller) {
    controller.clear(context);
  }

  void print(BuildContext context, SalesController controller) {
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
            child: ElevatedButton(
              onPressed: () {
                add(context, controller);
              },
              child: const Text(Labels.add),
            ),
          ),
          Flexible(
            child: ElevatedButton(
              onPressed: () {
                clear(context, controller);
              },
              child: const Text(Labels.clear),
            ),
          ),
          Flexible(
            child: ElevatedButton(
              onPressed: () {
                print(context, controller);
              },
              child: const Text(Labels.print),
            ),
          ),
        ],
      ),
    );
  }
}
