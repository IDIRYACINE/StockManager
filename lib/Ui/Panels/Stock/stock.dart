import 'package:flutter/material.dart';
import 'package:stock_manager/Features/Stock/Logic/stock_controller.dart';

import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Stock/stock_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class StockPanel extends StatelessWidget {
  const StockPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onRefresh(BuildContext context, StockController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, StockController controller) {
    controller.search(context);
  }

  void onAdd(BuildContext context, StockController controller) {
    controller.add(context);
  }

  void onQuickSearch(
      BuildContext context, AppJson query, StockController controller) {
    controller.quickSearch(context, query);
  }

  @override
  Widget build(BuildContext context) {
    final StockController controller =
        StockController();

    // final stockTypes = StockTypes.values
    //     .map((e) => DropdownAdapters.enumDropDownMenuItemAdapter(e))
    //     .toList();

    // final stockNotifier = ValueNotifier(StockTypes.products);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(context, controller),
          title: Translations.of(context)!.stock,
        ),
        const SizedBox(height: Measures.large),
        QuickSearchField<String>(
          label: Translations.of(context)!.reference,
          valueIdentifier: ProductFields.reference.name,
          onQuickSearch: (values) => onQuickSearch(context, values, controller),
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const StockTable(),
        ),
      ]),
    );
  }
}