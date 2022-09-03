
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/sales_controller.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {

  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SalesController controller = Provider.of<ControllersProvider>(context,listen:false).salesController;

    void add(){
      controller.add(context);
    }

    void clear(){
      controller.clear(context);
    }

    return Card(
      elevation: Measures.small,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: ElevatedButton(
              onPressed: add,
              child: const Text(Labels.add),
            ),
          ),
           
           Flexible(
            child: ElevatedButton(
              onPressed: clear,
              child: const Text(Labels.clear),
            ),
          ),
        ],
      ),
    );
  }
}

