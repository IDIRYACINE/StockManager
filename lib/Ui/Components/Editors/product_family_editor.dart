import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class FamilyEditor extends StatelessWidget {
  const FamilyEditor(
      {Key? key, this.editMode = false, this.family, required this.onConfirm})
      : super(key: key);

  final bool editMode;
  final ProductFamily? family;
  final ValueCallback<ProductFamily> onConfirm;

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
              initialValue: family?.name,
              label: Labels.name,
            )),
            const SizedBox(
              height: Measures.medium,
            ),
            Flexible(
                child: AttributeTextField(
              initialValue: family?.imageUrl,
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
                  label: Labels.save,
                  onPressed: () {
                    onConfirm(ProductFamily(name: 'test', reference: 'test'));
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ]),
        ));
  }
}
