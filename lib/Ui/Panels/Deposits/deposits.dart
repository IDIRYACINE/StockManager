
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'deposits_table.dart';
import 'actions_card.dart';

class DepositsPanel extends StatelessWidget{
  
  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  const DepositsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
          padding:  const EdgeInsets.all(Measures.paddingLarge),
     child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
       
        Expanded(
        flex: lowerRowFlex,
        child: const DepositsTable(),)  ,
         Expanded(
          flex: upperRowFlex,
          child:  const DepositFloatingActions()
        ),
      ]
          
     
      
     ),
   );
  }
}