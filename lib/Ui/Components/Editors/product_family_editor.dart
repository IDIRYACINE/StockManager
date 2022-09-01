import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
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
        editMode ? _EditDelegate(family) : _CreateDelegate(family);

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
              onChanged: modeDelegate.setReference,
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

abstract class ModeDelegate<T> {
  void setReference(String? reference);

  void setName(String? name);

  void confirm(T callback);
}

class _CreateDelegate implements ModeDelegate<Callback<ProductFamily>> {
  final ProductFamily family;

  _CreateDelegate(this.family);

  @override
  void setName(String? name) {
    if (name != null) {
      family.name = name;
    }
  }

  @override
  void setReference(String? reference) {
    if (reference != null) {
      family.reference = reference;
    }
  }

  @override
  void confirm(Callback<ProductFamily> callback) {
    callback(family);
  }
}

class _EditDelegate
    implements ModeDelegate<EditorCallback<AppJson, ProductFamily>> {
  final ProductFamily family;
  final ModifierBuilder modifierBuilder = ModifierBuilder();

  _EditDelegate(this.family);

  Map<ProductFamilyFields, dynamic> updatedFields = {};

  @override
  void setName(String? name) {
    if (name != null) {
      family.name = name;
      updatedFields[ProductFamilyFields.name] = name;
    }
  }

  @override
  void setReference(String? reference) {
    if (reference != null) {
      family.reference = reference;
      updatedFields[ProductFamilyFields.reference] = reference;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, ProductFamily> callback) {
    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, family);
  }
}
