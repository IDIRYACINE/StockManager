import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Controllers/orders_controller.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Generics/Cards/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class OrdersPanel extends StatelessWidget {
  const OrdersPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 2;
  final int lowerRowFlex = 8;

  void onRefresh(BuildContext context, OrdersController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, OrdersController controller) {
    controller.search(context);
  }

  void onAdd(BuildContext context, OrdersController controller) {
    controller.addSpreadedOrder(context);
  }

  void onQuickSearch(
      BuildContext context, AppJson query, OrdersController controller) {
    controller.quickSearch(context, query);
  }

  void onPrint(BuildContext context, OrdersController controller) {
    controller.printReport(context);
  }

  @override
  Widget build(BuildContext context) {
    final OrdersController controller =
        Provider.of<ControllersProvider>(context).ordersController;

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        SearchActionsCard(
          onPrint: () => onPrint(context, controller),
          onAdd: () => onAdd(context, controller),
          onRefresh: () => onRefresh(context, controller),
          title: Translations.of(context).orders,
        ),
        const SizedBox(height: Measures.large),
        QuickSearchDate(
          valueIdentifier: RecordFields.date.name,
          onQuickSearch: (values) => onQuickSearch(context, values, controller),
        ),
        const SizedBox(height: Measures.large),
        Expanded(
          flex: lowerRowFlex,
          child: const OrdersTableSpreaded(),
        ),
      ]),
    );
  }
}

class OrderProductsPanel extends StatelessWidget {
  const OrderProductsPanel({
    Key? key,
    this.isEditing = false,
  }) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        Expanded(
          flex: lowerRowFlex,
          child: const OrderProductsTable(),
        ),
      ]),
    );
  }
}
