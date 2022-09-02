import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductFamilyEditor/prodcut_family_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

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
        editMode ? ProductFamilyEditorMode.createModeInstance(family) : ProductFamilyEditorMode.editModeInstance(family);

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Flexible(
                child: AttributeTextField(
              onChanged: modeDelegate.setName,
              initialValue: family.name,
              label: Labels.name,
            )),
            const SizedBox(
              height: Measures.medium,
            ),
            Flexible(
                child: AttributeTextField(
              initialValue: family.reference,
              onChanged: modeDelegate.setImage,
              label: Labels.reference,
            )),
            const SizedBox(
              height: Measures.medium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultButton(
                    label: Labels.cancel,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                DefaultButton(
                  label: confirmLabel,
                  onPressed: () {
                    if (editMode) {
                      modeDelegate.confirm(editCallback);
                    } else {
                      modeDelegate.confirm(createCallback);
                    }
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ]),
        ));
  }
}
