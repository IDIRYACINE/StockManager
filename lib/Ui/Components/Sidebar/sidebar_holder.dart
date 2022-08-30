

import 'package:flutter/material.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
import 'package:stock_manager/Ui/Components/logo.dart';
import 'package:stock_manager/Ui/Components/Sidebar/sidebar_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SidebarHolder extends StatelessWidget{
  final int sidebarButtonsFlex = 4;
  final int sidebarButtonsSpacingFlex = 1;

  const SidebarHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Flexible(child: Padding(
            padding: EdgeInsets.only(top:Measures.medium),
            child: Logo(),
          )),
          Spacer(flex: sidebarButtonsSpacingFlex),
          const Flexible(child: SidebarButton(title: Labels.sales,index:NavigationStore.salesIndex)),
          const SizedBox(height: Measures.medium),
           const Flexible(child: SidebarButton(title: Labels.stock,index:NavigationStore.stockIndex)),
          const SizedBox(height: Measures.medium),
           const Flexible(child: SidebarButton(title: Labels.records,index:NavigationStore.recordsIndex)),
          const SizedBox(height: Measures.medium),
           const Flexible(child: SidebarButton(title: Labels.deposit,index:NavigationStore.depositsIndex)),
          const SizedBox(height: Measures.medium),
           const Flexible(child: SidebarButton(title: Labels.sellers,index:NavigationStore.sellersIndex)),
          const SizedBox(height: Measures.medium),
        ],
      ),
    );
  }

}