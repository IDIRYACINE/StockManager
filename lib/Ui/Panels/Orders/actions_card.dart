import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/orders_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Components/Buttons/action_button.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onRefresh(BuildContext context, OrdersController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, OrdersController controller) {
    controller.search(context);
  }

  void onAdd(BuildContext context, OrdersController controller) {
    controller.addSpreadedOrder(context);
  }

  void onQuickSearch(BuildContext context, OrdersController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

    controller.quickSearch(context, selector.map);
  }

  void onPrint(BuildContext context, OrdersController controller) {
    controller.printReport(context);
  }

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  @override
  Widget build(BuildContext context) {
    final OrdersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .ordersController;

    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              Translations.of(context).orders,
              style: theme.textTheme.displayMedium,
            ),
            const Spacer(),
            ActionButton(
              onPressed: () {
                onPrint(context, controller);
              },
              label: Translations.of(context).print,
              icon: Icons.print,
            ),
            const SizedBox(
              width: Measures.medium,
            ),
            ActionButton(
              onPressed: () {
                onRefresh(context, controller);
              },
              label: Translations.of(context).refresh,
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
              label: Translations.of(context).addOrder,
              icon: Icons.add,
              iconColor: Colors.white,
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
              child: SearchFieldDate(
                  startLabel: Translations.of(context).startDate,
                  endLabel: Translations.of(context).endDate,
                  isOptional: false,
                  registerQueryGenerator: registerQuery,
                  identifier: RecordFields.date.name),
            ),
            const SizedBox(
              width: Measures.medium,
            ),
            ActionButton(
              onPressed: () {
                onQuickSearch(context, controller);
              },
              label: Translations.of(context).quickSearch,
              icon: Icons.search,
            ),
          ],
        )
      ],
    );
  }
}
