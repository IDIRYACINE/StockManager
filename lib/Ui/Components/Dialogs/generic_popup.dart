import 'package:flutter/material.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

abstract class PopupsUtility {
  static void displayGenericPopup(BuildContext context, Widget content,{List<Widget>? actions}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: content,
              actions: actions,
            ));
  }

  static Future<T?> dispalyContextMenu<T>(
      {required BuildContext context,
      required List<PopupMenuItem<T>> items,
      RelativeRect? position}) async {
    return await showMenu<T>(
      context: context,
      position: (position != null)
          ? position
          : RelativeRect.fromLTRB(MediaQuery.of(context).size.width - 100,
              MediaQuery.of(context).size.height - 100, 0, 0),
      items: items,
    );
  }

  static List<PopupMenuItem<ContextMenuOperation>> buildEnumPopupItem(
      List<ContextMenuOperation> operations) {
    List<PopupMenuItem<ContextMenuOperation>> items = [];

    for (ContextMenuOperation operation in operations) {
      items.add(PopupMenuItem(
        value: operation,
        child: Text(operation.name),
      ));
    }

    return items;
  }

  static void showLoadingAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(content: Splash()));
  }
}

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog(
      {Key? key, required this.onConfirm, required this.message})
      : super(key: key);

  final VoidCallback onConfirm;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(message),
        const SizedBox(height: Measures.medium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultButton(
              label: Labels.cancel,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DefaultButton(
              label: Labels.confirm,
              onPressed: () {
                onConfirm();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class InformativeDialog extends StatelessWidget {
  const InformativeDialog({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(message),
        const SizedBox(height: Measures.medium),
        DefaultButton(
          label: Labels.confirm,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
