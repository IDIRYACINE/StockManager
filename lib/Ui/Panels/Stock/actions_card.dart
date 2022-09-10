import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/stock_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class StockFloatingActions extends StatelessWidget {
  const StockFloatingActions({Key? key}) : super(key: key);

  void add(BuildContext context, StockController controller) {
    controller.add(context);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllersProvider>(context, listen: false)
        .stockController;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            child: ActionButton(
          onPressed: () {
            add(context, controller);
          },
          label: Labels.add,
          icon: Icons.add,
        )),
      ],
    );
  }
}

class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onRefresh(BuildContext context, StockController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, StockController controller) {
    controller.search(context);
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

    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              child: SelectorDropDown<StockTypes>(
                initialSelection:stockNotifier ,
            onSelect: controller.onSelectStockType,
            label: const Text(Labels.stockTypes),
            items: stockTypes,
          )),
          Flexible(
            child: SearchFieldText(
                label: Labels.reference,
                isOptional: false,
                allowedSearchTypes: const [SearchType.equals],
                registerQueryGenerator: registerQuery,
                identifier: ProductFields.reference.name),
          ),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onQuickSearch(context, controller);
            },
            child: const Icon(Icons.search),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onRefresh(context, controller);
            },
            child: const Icon(Icons.refresh),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onAdvancedSearch(context, controller);
            },
            child: const Icon(Icons.filter),
          )),
        ],
      ),
    );
  }
}
