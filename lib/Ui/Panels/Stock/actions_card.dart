

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/Types/Generic/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget{
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    StockController controller = Provider.of<ControllersProvider>(context,listen:false).stockController;
  
    void add(){
      controller.add(context);
    }

    void edit(){
      controller.edit(context);
    }

    void remove(){
      controller.remove(context);
    }

    void search(){
      controller.search(context);
    }

    void refresh(){
      controller.refresh(context);
    }

   return Card(
      elevation: Measures.small,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Flexible(child: SelectorDropDown<StockTypes>(
                  onSelect: controller.onSelectStockType,
                  label: const Text(Labels.stockTypes),
                  items: StockTypes.values,
                adapter: controller.stockTypesAdapter,)),
                Flexible(child: ElevatedButton(onPressed: add, child: const Text(Labels.add),)),
                Flexible(child: ElevatedButton(onPressed: edit, child: const Text(Labels.edit),)),
                Flexible(child: ElevatedButton(onPressed: remove, child: const Text(Labels.remove),)),
                Flexible(child: ElevatedButton(onPressed: refresh, child: const Text(Labels.refresh),)),
                Flexible(child: ElevatedButton(onPressed: search, child: const Text(Labels.search),)),
            ],
          ),
   );
  }

}