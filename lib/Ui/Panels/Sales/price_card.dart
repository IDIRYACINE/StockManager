
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/records_controller.dart';
import 'package:stock_manager/Application/sales_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class PriceCard extends StatefulWidget{
  const PriceCard({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _PriceCardState();

}

class _PriceCardState extends State<PriceCard>{


  @override
  Widget build(BuildContext context) {
    RecordsLiveDataModel records = Provider.of<RecordsLiveDataModel>(context,listen: false);

   return Card(
    elevation: Measures.small,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Total Price'),
        ValueListenableBuilder<bool>(
          valueListenable: records.salesRefresh,
          builder: (context,totalPrice,child) {
            return Text(records.totalPrice.toString(), style: const TextStyle(fontSize: Measures.medium));
          }
        ),
      ],
    ),
   );
  }
}