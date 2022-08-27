
import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Ui/Panels/Orders/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Orders/orders_table.dart';

class OrdersPanel extends StatelessWidget{
  const OrdersPanel({Key? key}) : super(key: key);


  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex:upperRowFlex,child: const  ActionsCard()),
        Expanded(flex:lowerRowFlex,child: const OrdersTable(),)
      ]
    );
  }
}