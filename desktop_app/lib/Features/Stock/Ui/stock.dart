import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Features/Stock/Logic/product_family_controller.dart';
import 'package:stock_manager/Features/Stock/stock_feature.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Features/Stock/Ui/stock_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class StockPanel extends StatelessWidget {
  const StockPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onRefresh(BuildContext context, StockProductController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, StockProductController controller) {
    controller.search(context);
  }

  void onAdd(BuildContext context, StockProductController controller) {
    controller.add(context);
  }

  void onQuickSearch(
      BuildContext context, AppJson query, StockProductController controller) {
    controller.quickSearch(context, query);
  }

  @override
  Widget build(BuildContext context) {
        final bloc = BlocProvider.of<StockBloc>(context);
    StockProductController controller = StockProductController(bloc);


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
          child: const ProductsTable(),
        ),
      ]),
    );
  }
}


class ProductFamilyPanel extends StatelessWidget {
  const ProductFamilyPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  void onRefresh(BuildContext context, ProductFamilyController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, ProductFamilyController controller) {
    controller.search(context);
  }

  void onAdd(BuildContext context, ProductFamilyController controller) {
    controller.add(context);
  }

  void onQuickSearch(
      BuildContext context, AppJson query, ProductFamilyController controller) {
    controller.quickSearch(context, query);
  }

  @override
  Widget build(BuildContext context) {
        final bloc = BlocProvider.of<StockBloc>(context);
    ProductFamilyController controller = ProductFamilyController(bloc);


    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        ActionsCard(
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(context, controller),
          title: Translations.of(context)!.productFamillies,
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
          child: const ProductFamilyTable(),
        ),
      ]),
    );
  }
}