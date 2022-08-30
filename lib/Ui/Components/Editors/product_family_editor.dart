import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class FamilyEditor extends StatelessWidget {
  const FamilyEditor(
      {Key? key, this.editMode = false, required this.family, required this.onConfirm, required this.confirmLabel})
      : super(key: key);

  final bool editMode;
  final ProductFamily family;
  final VoidValueCallback<ProductFamily> onConfirm;
  final String confirmLabel ;

  void setReference(String? reference){
    if (reference != null) {
      family.reference = reference;
    }
  }

  void setName(String? name){
    if (name != null) {
      family.name = name;
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Flexible(
                child: AttributeTextField(
                  onChanged: setName,
              initialValue: family.name,
              label: Labels.name,
            )),
            const SizedBox(
              height: Measures.medium,
            ),
            Flexible(
                child: AttributeTextField(
              initialValue: family.reference,
              onChanged: setReference,
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
                    onConfirm(family);
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ]),
        ));
  }
}
