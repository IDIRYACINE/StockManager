
import 'package:flutter/material.dart';

abstract class PopupsUtility{
    
  static void displayGenericPopup(BuildContext context, Widget content) {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: content,
    ));
  }

}