import 'package:flutter/material.dart';
import 'package:stock_manager/Features/History/Logic/records_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Records/records_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class RecordsPanel extends StatelessWidget {
  const RecordsPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onRefresh(BuildContext context, RecordsController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, RecordsController controller) {
    controller.search(context);
  }

  void onQuickSearch(
      BuildContext context, AppJson query, RecordsController controller) {
    controller.quickSearch(context, query);
  }

  void onPrint(BuildContext context, RecordsController controller) {
    controller.printRecords(context);
  }

  @override
  Widget build(BuildContext context) {
    final RecordsController controller = RecordsController();

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onPrint: () => onPrint(context, controller),
          onRefresh: () => onRefresh(context, controller),
          title: Translations.of(context)!.records,
        ),
        const SizedBox(height: Measures.large),
        QuickSearchDate(
          valueIdentifier: RecordFields.date.name,
          onQuickSearch: (values) => onQuickSearch(context, values, controller),
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const RecordsSpreadedTable(),
        ),
      ]),
    );
  }
}
