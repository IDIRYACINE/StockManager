import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/order_products_controller.dart';
import 'package:stock_manager/Application/Controllers/orders_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrdersFloatingActions extends StatelessWidget {
  const OrdersFloatingActions({Key? key}) : super(key: key);

  void add(BuildContext context, OrdersController controller) {
    controller.add(context);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllersProvider>(context, listen: false)
        .ordersController;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            child: ActionButton(
          onPressed: () {
            add(context, controller);
          },
          label: Labels.add,
          icon: Icons.add,
        )),
      ],
    );
  }
}

class OrderProductsFloatingActions extends StatelessWidget {
  const OrderProductsFloatingActions({Key? key, required this.isEditing})
      : super(key: key);

  final bool isEditing;

  void add(BuildContext context, OrderProductsController controller) {
    controller.add(context);
  }

  void done(BuildContext context, OrdersController controller) {
    Navigator.pop(context);
  }

  void editCustomer(BuildContext context, OrdersController controller) {
    controller.editCustomer(context);
  }

  @override
  Widget build(BuildContext context) {
    final orderProductscontroller =
        Provider.of<ControllersProvider>(context, listen: false)
            .orderProductsController;

    final ordersController =
        Provider.of<ControllersProvider>(context, listen: false)
            .ordersController;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            child: ActionButton(
          onPressed: () {
            add(context, orderProductscontroller);
          },
          label: Labels.add,
          icon: Icons.add,
        )),
        Flexible(
            child: ActionButton(
          onPressed: () {
            editCustomer(context, ordersController);
          },
          label: Labels.customer,
          icon: Icons.contacts,
        )),
        Flexible(
            child: ActionButton(
          onPressed: () {
            done(context, ordersController);
          },
          label: Labels.cancel,
          icon: Icons.done,
        )),
      ],
    );
  }
}

class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onRefresh(BuildContext context, OrdersController controller) {
    controller.refresh(context);
  }

  void onAdvancedSearch(BuildContext context, OrdersController controller) {
    controller.search(context);
  }

  void onQuickSearch(BuildContext context, OrdersController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

    controller.quickSearch(context, selector.map);
  }

  void onPrint(BuildContext context, OrdersController controller) {
    controller.printReport(context);
  }

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  @override
  Widget build(BuildContext context) {
    final OrdersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .ordersController;

    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: SearchFieldText(
                label: Labels.customerName,
                isOptional: false,
                allowedSearchTypes: const [SearchType.equals],
                registerQueryGenerator: registerQuery,
                identifier: OrderFields.customerName.name),
          ),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onQuickSearch(context, controller);
            },
            child: const Icon(Icons.search),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onRefresh(context, controller);
            },
            child: const Icon(Icons.refresh),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onAdvancedSearch(context, controller);
            },
            child: const Icon(Icons.filter),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onPrint(context, controller);
            },
            child: const Icon(Icons.print),
          )),
        ],
      ),
    );
  }
}
