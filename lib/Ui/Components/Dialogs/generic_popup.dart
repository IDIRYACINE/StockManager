
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

abstract class PopupsUtility{
    
  static void displayGenericPopup(BuildContext context, Widget content) {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: content,
    ));
  }

}

class ConfirmDialog extends StatelessWidget{
  const ConfirmDialog({Key? key, required this.onConfirm, required this.message}) : super(key: key);

  final VoidCallback onConfirm;
  final String message;

  @override
  Widget build(BuildContext context) {
    
    return AlertDialog(

      content: Text(message),
      actions: const [
        DefaultButton(label: Labels.cancel),
        DefaultButton(label: Labels.confirm),
      ],
    );
  }

}