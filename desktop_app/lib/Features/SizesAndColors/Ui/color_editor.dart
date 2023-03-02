import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Editors/color_mode.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class ModelColorEditor extends StatelessWidget {
  const ModelColorEditor({
    Key? key,
    this.editMode = false,
    required this.modelColor,
    required String confirmLabel,
    this.createCallback,
    this.editCallback,
  })  : assert(
          (editMode && editCallback != null) ||
              (!editMode && createCallback != null),
          'editMode and its callback must be set together',
        ),
        super(key: key);

  final bool editMode;
  final ModelColor modelColor;

  final Callback<ModelColor>? createCallback;
  final EditorCallback<AppJson, ModelColor>? editCallback;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final dynamic colorEditorMode = editMode
        ? ColorEditorMode.editModeInstance(modelColor)
        : ColorEditorMode.createModeInstance(modelColor);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingNormal),
      child: Form(
        key: formKey,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                  child: _ColorForm(
                modelColor: modelColor,
                modelColorEditorMode: colorEditorMode,
              )),
              const SizedBox(height: Measures.small),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultButton(
                      label: Translations.of(context)!.cancel,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  DefaultButton(
                    label: Translations.of(context)!.save,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (editMode) {
                          colorEditorMode.confirm(editCallback);
                        } else {
                          colorEditorMode.confirm(createCallback);
                        }
                      }
                    },
                  ),
                ],
              )
            ]),
      ),
    );
  }
}

class _ColorForm extends StatelessWidget {
  final ModelColor modelColor;
  final ColorEditorMode modelColorEditorMode;

  const _ColorForm({required this.modelColor, required this.modelColorEditorMode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              child: AttributeTextField(
            initialValue: modelColor.color,
            onChanged: modelColorEditorMode.setName,
            label: Translations.of(context)!.name,
          ),),
        ],
      ),
    );
  }
}
