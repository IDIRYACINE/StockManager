import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/deposit_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Components/Buttons/action_button.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onQuickSearch(BuildContext context, DespositController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

    controller.quickSearch(context, selector.map);
  }

  void onPrint(BuildContext context, DespositController controller) {
    controller.printReport(context);
  }

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  void onClear(BuildContext context, DespositController controller) {
    controller.clear(context);
  }

  void onAdd(BuildContext context, DespositController controller) {
    controller.add(context);
  }

  @override
  Widget build(BuildContext context) {
    final DespositController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .depositController;

    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              Labels.deposit,
              style: theme.textTheme.displayMedium,
            ),
            const Spacer(),
            ActionButton(
              onPressed: () {
                onPrint(context, controller);
              },
              label: Labels.print,
              icon: Icons.print,
            ),
            const SizedBox(
              width: Measures.medium,
            ),
            ActionButton(
              onPressed: () {
                onClear(context, controller);
              },
              label: Labels.refresh,
              icon: Icons.refresh,
            ),
            const SizedBox(
              width: Measures.medium,
            ),
            ActionButton(
              onPressed: () {
                onAdd(context, controller);
              },
              backgroundColor: theme.colorScheme.primaryContainer,
              label: Labels.addDeposit,
              icon: Icons.add,
            ),
          ],
        ),
        const SizedBox(
          height: Measures.medium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: Measures.quickSearchFieldWidth,
              child: SearchFieldText(
                  label: Labels.invoiceId,
                  isOptional: false,
                  parser: (string) => int.parse(string),
                  registerQueryGenerator: registerQuery,
                  identifier: OrderFields.timeStamp.name),
            ),
            ActionButton(
              onPressed: () {
                onQuickSearch(context, controller);
              },
              label: Labels.quickSearch,
              icon: Icons.search,
            ),
          ],
        )
      ],
    );
  }
}
