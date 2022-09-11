

import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/deposit_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';


class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];


  void onQuickSearch(BuildContext context, DespositController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

    controller.quickSearch(context, selector.map);
  }

  void onPrint(BuildContext context, DespositController controller) {
    controller.printReport(context);
  }

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  
  void onClear(BuildContext context, DespositController controller) {
    controller.clear(context);
  } 

  @override
  Widget build(BuildContext context) {
    final DespositController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .depositController;

    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: SearchFieldText(
                label: Labels.invoiceId,
                isOptional: false,
                registerQueryGenerator: registerQuery,
                identifier: RecordFields.timeStamp.name),
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
              onClear(context, controller);
            },
            child: const Icon(Icons.clear),
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




class DepositFloatingActions extends StatelessWidget {
  const DepositFloatingActions({Key? key}) : super(key: key);

  void add(BuildContext context, DespositController controller) {
    controller.add(context);
  }


  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .depositController;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            child: ActionButton(
          onPressed: (){add(context,controller);},
          label: Labels.add, icon: Icons.add,
        )),
       
      ],
    );
  }
}
