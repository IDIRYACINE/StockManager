import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sellers_controller.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SellersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .sellersController;

    void add() {
      // controller.add(context);
    }

    void edit() {
      // controller.edit();
    }

    void remove() {
      // controller.remove();
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
        ],
      ),
    );
  }
}

class SellersFloatingActions extends StatelessWidget {
  const SellersFloatingActions({Key? key}) : super(key: key);

  void add(BuildContext context, SellersController controller) {
    controller.add(context);
  }

  void refresh(BuildContext context, SellersController controller) {
    controller.refresh(context);
  }

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .sellersController;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            child: ActionButton(
          onPressed: (){add(context,controller);},
          label: Labels.add, icon: Icons.add,
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
