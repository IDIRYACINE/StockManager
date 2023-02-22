import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Deposit/Logic/deposit_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Features/Deposit/State/deposit.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

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
    controller.addDepositProduct(context);
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<DepositBloc>(context);
    final DespositController controller = DespositController(bloc);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        ActionsCard(
          onPrint: () => onPrint(context, controller),
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onClear(context, controller),
          title: Translations.of(context)!.deposit,
        ),
        const SizedBox(height: Measures.large),
        QuickSearchField<int>(
          label: Translations.of(context)!.invoiceId,
          parser: (value) => int.parse(value),
          valueIdentifier: RecordFields.timeStamp.name,
          onQuickSearch: (values) => onQuickSearch(context, values, controller),
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const DepositsSpreadedTable(),
        ),
      ]),
    );
  }
}
