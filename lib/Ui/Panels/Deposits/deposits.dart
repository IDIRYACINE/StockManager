
import 'package:flutter/material.dart';

import 'deposits_table.dart';
import 'actions_card.dart';

class DepositsPanel extends StatelessWidget{
  
  final int upperRowFlex = 1;
  final int lowerRowFlex = 8;

  const DepositsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        flex: upperRowFlex,
        child:  const ActionsCard()
      ),
      Expanded(
      flex: lowerRowFlex,
      child: const DepositsTable(),)  
    ]
        
   
    
   );
  }
}