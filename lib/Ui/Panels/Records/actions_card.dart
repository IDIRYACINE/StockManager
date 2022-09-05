import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/records_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  void onRefresh(BuildContext context) {
    Provider.of<ControllersProvider>(context, listen: false)
        .recordsController
        .refresh(context);
  }

  void onSearch(BuildContext context) {
    Provider.of<ControllersProvider>(context, listen: false)
        .recordsController
        .search(context);
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onRefresh(context);
            },
            child: const Text(Labels.refresh),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onSearch(context);
            },
            child: const Text(Labels.search),
          )),
        ],
      ),
    );
  }
}


class RecordsFloatingActions extends StatelessWidget {
  const RecordsFloatingActions({Key? key}) : super(key: key);

  void search(BuildContext context, RecordsController controller) {
    controller.search(context);
  }

  void refresh(BuildContext context, RecordsController controller) {
    controller.refresh(context);
  }

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .recordsController;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            child: ActionButton(
          onPressed: (){search(context,controller);},
          label: Labels.search, icon: Icons.search,
        )),
        Flexible(
            child:ActionButton(
          onPressed: (){refresh(context,controller);},
          label: Labels.refresh, icon: Icons.refresh,
        )),
      ],
    );
  }
}


class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onRefresh(BuildContext context,RecordsController controller) {
   controller
        .refresh(context);
  }

  void onAdvancedSearch(BuildContext context,RecordsController controller) {
   controller
        .search(context);
  }

  void onQuickSearch(BuildContext context,RecordsController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

   controller
        .quickSearch(context,selector.map);
  }


  void onPrint(BuildContext context,RecordsController controller){
    controller.printRecords(context);
  }

 
  void registerQuery(Callback<SelectorBuilder> queryGenerator){
    queryGenerators.add(queryGenerator);
  }

  
  @override
  Widget build(BuildContext context) {
    final RecordsController controller = Provider.of<ControllersProvider>(context, listen: false)
        .recordsController;



    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Flexible(
              child: SearchFieldDate(
                startLabel: Labels.startDate,
                endLabel: Labels.endDate,
                isOptional: false,
                registerQueryGenerator: registerQuery,
                identifier: RecordFields.date.name),),

           Flexible(
              child: ElevatedButton(
            onPressed: () {
              onQuickSearch(context,controller);
            },
            child: const Icon(Icons.search),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onRefresh(context,controller);
            },
            child: const Icon(Icons.refresh),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onAdvancedSearch(context,controller);
            },
            child:const Icon(Icons.filter),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onPrint(context,controller);
            },
            child:const Icon(Icons.print),
          )),
        ],
      ),
    );
  }
  
}


