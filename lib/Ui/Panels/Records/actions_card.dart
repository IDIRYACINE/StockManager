import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  void onRefresh(BuildContext context) {
    Provider.of<ControllersProvider>(context, listen: false)
        .recordsController
        .refresh(context);
  }

  void onSearch(BuildContext context) {
    Provider.of<ControllersProvider>(context, listen: false)
        .recordsController
        .search(context);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onRefresh(context);
            },
            child: const Text(Labels.refresh),
          )),
          Flexible(
              child: ElevatedButton(
            onPressed: () {
              onSearch(context);
            },
            child: const Text(Labels.search),
          )),
        ],
      ),
    );
  }
}
