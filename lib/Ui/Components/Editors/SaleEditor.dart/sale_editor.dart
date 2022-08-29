import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_form.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SaleEditor extends StatelessWidget {
  const SaleEditor({Key? key, this.editMode = false, required this.record})
      : super(key: key);

  final bool editMode;
  final Record record;


  void onSearch() {
    
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  flex: 2,
                    child: DefaultDecorator(
                        child: _SearchBar(onSearch: onSearch),
                ),),
                const SizedBox(height: Measures.small),
                const Flexible(
                  flex: 2,
                    child: DefaultDecorator(
                        child: AttributeTextField(
                          initialValue: '',
                          label: Labels.customerName,
                        ))),
                const SizedBox(height: Measures.small),
                Expanded(
                    flex: 8,
                    child: DefaultDecorator(
                        showShadows: false,
                        child: Padding(
                          padding: const EdgeInsets.all(Measures.small),
                          child: SaleForm(product: Product()),
                        ))),
                const SizedBox(height: Measures.small),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultButton(label: Labels.cancel, onPressed: () {
                        Navigator.pop(context);
                      }),
                      DefaultButton(
                        label: Labels.save,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            
                          }
                        
                        },
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key, required this.onSearch}) : super(key: key);

  final VoidCallback onSearch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
            child: AttributeTextField(
          label: Labels.barcode,
          initialValue: '',
        )),
        Flexible(
            child: DefaultButton(label: Labels.search, onPressed: onSearch)),
      ],
    );
  }
}
