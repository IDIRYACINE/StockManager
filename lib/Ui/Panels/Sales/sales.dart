
import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Ui/Panels/Sales/actions_card.dart';
import 'package:stock_manager/Ui/Panels/Sales/price_card.dart';
import 'package:stock_manager/Ui/Panels/Sales/sales_table.dart';

class SalesPanel extends StatelessWidget{
  
  final int spaceFlex = 1;
  final int lowerRowFlex = 2;
  final int upperRowFlex = 1;
  final int priceCardFlex = 8;
  final int actionsCardFlex = 4;

  const SalesPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        flex: upperRowFlex,
        child: Row(
          children: [
            Expanded(
              flex: priceCardFlex,
              child: const PriceCard()),
            Spacer(
              flex: spaceFlex,
            ),
            
                  Expanded(
                    flex: actionsCardFlex,
                    child: const ActionsCard(),
                  ),
                ],
              ),
      ),
      Expanded(
      flex: lowerRowFlex,
      child: const SalesTable(),)  
    ]
        
   
    
   );
  }
}