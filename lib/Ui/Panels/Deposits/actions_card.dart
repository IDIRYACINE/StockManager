

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/deposit_controller.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget{
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DespositController controller = Provider.of<ControllersProvider>(context,listen:false).depositController;

    void add(){
      controller.add(context);
    }

    void edit(){
      // controller.edit(context);
    }

    void remove(){
      // controller.remove(context);
    }


   return Card(
      elevation: Measures.small,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Flexible(child: ElevatedButton(onPressed: add, child: const Text(Labels.add),)),
                Flexible(child: ElevatedButton(onPressed: edit, child: const Text(Labels.edit),)),
                Flexible(child: ElevatedButton(onPressed: remove, child: const Text(Labels.remove),)),
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
