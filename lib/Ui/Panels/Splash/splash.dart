

import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class Splash extends StatelessWidget{

  const Splash({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        Text(Labels.loading),
        LinearProgressIndicator(),
      ],
    );
  }


}