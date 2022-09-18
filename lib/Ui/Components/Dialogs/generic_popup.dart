import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

abstract class PopupsUtility {
  
  static void displayGenericPopup(BuildContext context, Widget content,
      {List<Widget>? actions, double? width, double? height}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SizedBox(width: width, height: height, child: content),
        actions: actions,
      ),
    );
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

  static void displayToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      message,
      style: Theme.of(context).textTheme.bodySmall!,
    )));
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
              label: Translations.of(context)!.cancel,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DefaultButton(
              label: Translations.of(context)!.confirm,
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
          label: Translations.of(context)!.confirm,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

class TextFieldDialog extends StatelessWidget {
  const TextFieldDialog(
      {Key? key,
      this.initialValue,
      required this.label,
      required this.onConfirm,
      this.validator})
      : super(key: key);

  final String? initialValue;
  final String label;
  final Callback<String?> onConfirm;
  final TextFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String? fieldValue;

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
            initialValue: initialValue,
            validator: validator,
            onChanged: (value) => fieldValue = value,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DefaultButton(
                  label: Translations.of(context)!.cancel,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              DefaultButton(
                  label: Translations.of(context)!.confirm,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      onConfirm(fieldValue);
                      Navigator.pop(context);
                    }
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
