import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Sellers/Logic/sellers_controller.dart';
import 'package:stock_manager/Features/Sellers/feature.dart';

import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'sellers_table.dart';

class SellersPanel extends StatelessWidget {
  const SellersPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onAdd(BuildContext context, SellersController controller) {
    controller.add(context);
  }

  void onRefresh( SellersController controller) {
    controller.refresh();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SellersBloc>(context);
    final controller = SellersController(bloc);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(controller),
          title: Translations.of(context)!.sellers,
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const SellersTable(),
        ),
      ]),
    );
  }
}
