import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/SizesAndColors/feature.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class ColorsPanel extends StatelessWidget {
  const ColorsPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onAdd(BuildContext context, SizeColorController controller) {
    controller.addColor(context);
  }

  void onRefresh(SizeColorController controller) {
    controller.refreshColors();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SizeColorBloc>(context);
    final controller = SizeColorController(bloc);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(controller),
          title: Translations.of(context)!.colors,
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const ColorTable(),
        ),
      ]),
    );
  }
}

class SizesPanel extends StatelessWidget {
  const SizesPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onAdd(BuildContext context, SizeColorController controller) {
    controller.addSize(context);
  }

  void onRefresh(SizeColorController controller) {
    controller.refreshSizes();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SizeColorBloc>(context);
    final controller = SizeColorController(bloc);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(controller),
          title: Translations.of(context)!.sizes,
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const SizeTable(),
        ),
      ]),
    );
  }
}
