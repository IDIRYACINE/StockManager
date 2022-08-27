

import 'package:flutter/material.dart';
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
          Expanded(
            flex: sidebarButtonsFlex,
            child: ListView.separated(
              itemBuilder: (context, index) => SidebarButton(title: Titles.sidebarTitles[index],index:index),
              itemCount: Titles.sidebarTitles.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: Measures.small,),),
          ),
        ],
      ),
    );
  }

}