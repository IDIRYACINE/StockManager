import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Ui/Panels/Orders/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders_table.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrdersPanel extends StatelessWidget {
  const OrdersPanel({Key? key}) : super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        Expanded(flex: upperRowFlex, child: SearchActionsCard()),
        const SizedBox(height: Measures.paddingLarge),
        Expanded(
          flex: lowerRowFlex,
          child: const OrdersTable(),
        ),
        Expanded(flex: upperRowFlex, child: const OrdersFloatingActions()),
      ]),
    );
  }
}

class OrderProductsPanel extends StatelessWidget {
  const OrderProductsPanel(
      {Key? key,  this.isEditing = false,
     })
      :
        super(key: key);

  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;
  final bool isEditing;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  const EdgeInsets.all(Measures.paddingLarge),
      child: Column(children: [
        Expanded(
          flex: lowerRowFlex,
          child: const OrderProductsTable(),
        ),
        Expanded(flex: upperRowFlex, child: 
         OrderProductsFloatingActions(isEditing: isEditing,)),
      ]),
    );
  }
}
