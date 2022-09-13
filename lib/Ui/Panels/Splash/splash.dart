

import 'package:flutter/material.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class Splash extends StatelessWidget{

  const Splash({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(Translations.of(context).loading),
        const LinearProgressIndicator(),
      ],
    );
  }


}