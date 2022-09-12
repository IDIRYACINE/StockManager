import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/stock_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Buttons/action_button.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onRefresh(BuildContext context, StockController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, StockController controller) {
    controller.search(context);
  }


  void onAdd(BuildContext context, StockController controller) {
    controller.add(context);
  }

  void onQuickSearch(BuildContext context, StockController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

    controller.quickSearch(context, selector.map);
  }

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  @override
  Widget build(BuildContext context) {
    final StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    final stockTypes = StockTypes.values
        .map((e) => DropdownAdapters.enumDropDownMenuItemAdapter(e))
        .toList();

    final stockNotifier = ValueNotifier(StockTypes.products);

   final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              Labels.stock,
              style: theme.textTheme.displayMedium,
            ),
            const Spacer(),
            
            ActionButton(
              onPressed: () {
                onAdd(context, controller);
              },
              backgroundColor: theme.colorScheme.primaryContainer,
              label: Labels.add,
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
              height: Measures.quickSearchFieldHeight,
              child: SearchFieldText(
                    label: Labels.reference,
                    isOptional: false,
                    registerQueryGenerator: registerQuery,
                    identifier: OrderFields.reference.name),
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
