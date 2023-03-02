import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Editors/size_mode.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class ModelSizeEditor extends StatelessWidget {
  const ModelSizeEditor({
    Key? key,
    this.editMode = false,
    required this.modelSize,
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
  final ModelSize modelSize;

  final Callback<ModelSize>? createCallback;
  final EditorCallback<AppJson, ModelSize>? editCallback;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final dynamic sizeEditorMode = editMode
        ? SizeEditorMode.editModeInstance(modelSize)
        : SizeEditorMode.createModeInstance(modelSize);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingNormal),
      child: Form(
        key: formKey,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                  child: _SizeForm(
                modelSize: modelSize,
                modelSizeEditorMode: sizeEditorMode,
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
                          sizeEditorMode.confirm(editCallback);
                        } else {
                          sizeEditorMode.confirm(createCallback);
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

class _SizeForm extends StatelessWidget {
  final ModelSize modelSize;
  final SizeEditorMode modelSizeEditorMode;

  const _SizeForm({required this.modelSize, required this.modelSizeEditorMode});

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
              initialValue: modelSize.size,
              onChanged: modelSizeEditorMode.setName,
              label: Translations.of(context)!.name,
            ),
          ),
        ],
      ),
    );
  }
}
