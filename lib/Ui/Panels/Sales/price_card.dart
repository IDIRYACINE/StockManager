import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class PriceCard extends StatefulWidget {
  const PriceCard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {
    RecordsLiveDataModel records =
        Provider.of<LiveModelProvider>(context, listen: false).recordsLiveModel;

    return Card(
      elevation: Measures.small,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Total Price',
            style: TextStyle(fontSize: Measures.h1TextSize),
          ),
          ValueListenableBuilder<double>(
              valueListenable: records.totalPrice,
              builder: (context, totalPrice, child) {
                return Text(totalPrice.toString(),
                    style: const TextStyle(fontSize: Measures.h1TextSize,color: Colors.amber));
              }),
        ],
      ),
    );
  }
}
