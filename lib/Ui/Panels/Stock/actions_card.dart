import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    void add() {
      controller.add(context);
    }

    void edit() {
      // controller.edit(context);
    }

    void remove() {
      // controller.remove(context);
    }

    void search() {
      controller.search(context);
    }

    void refresh() {
      controller.refresh(context);
    }

    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              child: SelectorDropDown<StockTypes>(
            onSelect: controller.onSelectStockType,
            label: const Text(Labels.stockTypes),
            items: StockTypes.values,
            adapter: StockController.stockTypesDropdownAdapter,
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: add,
            child: const Text(Labels.add),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: edit,
            child: const Text(Labels.edit),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: remove,
            child: const Text(Labels.remove),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: refresh,
            child: const Text(Labels.refresh),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: search,
            child: const Text(Labels.search),
          )),
        ],
      ),
    );
  }
}

class StockFloatingActions extends StatelessWidget {
  const StockFloatingActions({Key? key}) : super(key: key);

  void add(BuildContext context, StockController controller) {
    controller.add(context);
  }


  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllersProvider>(context, listen: false)
        .stockController;

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


class SearchActionsCard extends StatelessWidget {
  SearchActionsCard({Key? key}) : super(key: key);

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void onRefresh(BuildContext context,StockController controller) {
   controller
        .refresh(context);
  }

  void onAdvancedSearch(BuildContext context,StockController controller) {
   controller
        .search(context);
  }

  void onQuickSearch(BuildContext context,StockController controller) {
    SelectorBuilder selector = SelectorBuilder();

    for (Callback<SelectorBuilder> callback in queryGenerators) {
      callback(selector);
    }

   controller
        .quickSearch(context,selector.map);
  }

 
  void registerQuery(Callback<SelectorBuilder> queryGenerator){
    queryGenerators.add(queryGenerator);
  }

  
  @override
  Widget build(BuildContext context) {
    final StockController controller = Provider.of<ControllersProvider>(context, listen: false)
        .stockController;



    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Flexible(
              child: SelectorDropDown<StockTypes>(
            onSelect: controller.onSelectStockType,
            label: const Text(Labels.stockTypes),
            items: StockTypes.values,
            adapter: StockController.stockTypesDropdownAdapter,
          )),
          Flexible(
              child: SearchFieldText(
                label: Labels.reference,
                isOptional: false,
                
                allowedSearchTypes: const [SearchType.equals],
                registerQueryGenerator: registerQuery,
                identifier: ProductFields.reference.name),),

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
        ],
      ),
    );
  }
  
}
