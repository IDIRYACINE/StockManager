import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sellers_controller.dart';
import 'package:stock_manager/Ui/Components/Buttons/action_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';


class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  void onAdd(BuildContext context, SellersController controller) {
    controller.add(context);
  }

  void onRefresh(BuildContext context, SellersController controller) {
    controller.refresh(context);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllersProvider>(context, listen: false)
        .sellersController;

    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          Labels.sellers,
          style: theme.textTheme.displayMedium,
        ),
        const Spacer(),
        ActionButton(
          onPressed: () {
            onRefresh(context, controller);
          },
          label: Labels.refresh,
          icon: Icons.refresh,
        ),
        const SizedBox(
          width: Measures.medium,
        ),
        ActionButton(
          onPressed: () {
            onAdd(context, controller);
          },
          backgroundColor: theme.colorScheme.primaryContainer,
          label: Labels.addSeller,
          icon: Icons.add,
        ),
      ],
    );
  }
}
