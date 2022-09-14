import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Controllers/deposit_controller.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

import 'deposits_table.dart';

class DepositsPanel extends StatelessWidget {
  final int upperRowFlex = 2;
  final int lowerRowFlex = 8;

  const DepositsPanel({Key? key}) : super(key: key);

  void onQuickSearch(
      BuildContext context, AppJson values, DespositController controller) {
    controller.quickSearch(context, values);
  }

  void onPrint(BuildContext context, DespositController controller) {
    controller.printReport(context);
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
        Provider.of<ControllersProvider>(context).depositController;

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        SearchActionsCard(
          onPrint: () => onPrint(context, controller),
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onClear(context, controller),
          title: Translations.of(context).deposit,
        ),
        const SizedBox(height: Measures.large),
        QuickSearchField<int>(
          parser: (value) => int.parse(value),
          valueIdentifier: RecordFields.timeStamp.name,
          onQuickSearch: (values) => onQuickSearch(context, values, controller),
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const DepositsTable(),
        ),
      ]),
    );
  }
}
