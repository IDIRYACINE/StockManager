
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Measures.small,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: ElevatedButton(
              child: const Text(ButtonsTitles.add),
              onPressed: () {},
            ),
          ),
           Flexible(
            child: ElevatedButton(
              child: const Text(ButtonsTitles.edit),
              onPressed: () {},
            ),
          ),
           Flexible(
            child: ElevatedButton(
              child: const Text(ButtonsTitles.remove),
              onPressed: () {},
            ),
          ),
           Flexible(
            child: ElevatedButton(
              child: const Text(ButtonsTitles.clear),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}