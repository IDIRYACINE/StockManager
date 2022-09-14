import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Controllers/sellers_controller.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
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

  void onRefresh(BuildContext context, SellersController controller) {
    controller.refresh(context);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllersProvider>(context, listen: false)
        .sellersController;

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        SearchActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(context, controller),
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
