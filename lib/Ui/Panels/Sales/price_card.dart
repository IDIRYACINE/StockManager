import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Purchase/Purchase/bloc.dart';
import 'package:stock_manager/Features/Purchase/Purchase/state.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class PriceCard extends StatefulWidget {
  const PriceCard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: Measures.small,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Total Price',
            style: TextStyle(fontSize: Measures.h1TextSize,color: Colors.white),
          ),
          BlocBuilder<PurchaseBloc,PurchaseState>(
              builder: (context, state) {
                return Text(state.totalPrice.toString(),
                    style: const TextStyle(fontSize: Measures.h1TextSize,color: Colors.white));
              }),
        ],
      ),
    );
  }
}
