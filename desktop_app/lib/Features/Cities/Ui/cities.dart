import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Cities/feature.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'cities_table.dart';

class CitiesPanel extends StatelessWidget {
  const CitiesPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onAdd(BuildContext context, CitiesController controller) {
    controller.add(context);
  }

  void onRefresh( CitiesController controller) {
    controller.refresh();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RegionBloc>(context);
    final controller = CitiesController(bloc);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(controller),
          title: Translations.of(context)!.cities,
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const CitiesTable(),
        ),
      ]),
    );
  }
}
