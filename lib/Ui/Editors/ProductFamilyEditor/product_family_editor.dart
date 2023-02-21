import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/Models/prodcut_family_mode.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class FamilyEditor extends StatelessWidget {
  const FamilyEditor(
      {Key? key,
      this.editMode = false,
      required this.family,
      this.createCallback,
      required this.confirmLabel,
      this.editCallback}) : assert(
        (editMode && editCallback != null) || (!editMode && createCallback != null),
        'editMode and its callback must be set together',
      )
      ,super(key: key);

  final bool editMode;
  final ProductFamily family;
  final Callback<ProductFamily>? createCallback;
  final EditorCallback<AppJson, ProductFamily>? editCallback;
  final String confirmLabel;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final dynamic modeDelegate =
        editMode ? ProductFamilyEditorMode.editModeInstance(family) : ProductFamilyEditorMode.createModeInstance(family) ;

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center, children: [
            Flexible(
                child: AttributeTextField(
              onChanged: modeDelegate.setName,
              initialValue: family.name,
              label: Translations.of(context)!.
name,
            )),
            const SizedBox(
              height: Measures.medium,
            ),
            Flexible(
                child: AttributeTextField(
              initialValue: family.reference,
              onChanged: modeDelegate.setReference,
              label: Translations.of(context)!.
reference,
            )),
            const SizedBox(
              height: Measures.medium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultButton(
                    label: Translations.of(context)!.
cancel,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                DefaultButton(
                  label: confirmLabel,
                  onPressed: () {
                    if (editMode) {
                      modeDelegate.result(editCallback);
                    } else {
                      modeDelegate.result(createCallback);
                    }
                  },
                ),
              ],
            )
          ]),
        ));
  }
}
