
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class PriceCard extends StatefulWidget{
  const PriceCard({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _PriceCardState();

}

class _PriceCardState extends State<PriceCard>{

  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
   return Card(
    elevation: Measures.small,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Total Price'),
        Text(totalPrice.toString(), style: const TextStyle(fontSize: Measures.medium)),
      ],
    ),
   );
  }
}