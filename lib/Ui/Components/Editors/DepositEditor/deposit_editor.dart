import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'deposit_form.dart';

class DepositEditor extends StatelessWidget {
  const DepositEditor({Key? key, this.editMode = false, required this.record, required void Function(Record element) confirmCallback, required String confirmLabel})
      : super(key: key);

  final bool editMode;
  final Record record;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;

  void onSearch() {}

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Product product = Product();

    return Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: searchBarFlex,
              child: DefaultDecorator(
                child: _SearchBar(onSearch: onSearch),
              ),
            ),
            Expanded(
              flex: bodyFlex,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: DefaultDecorator(
                          child: ProductForm(
                    product: product,
                  ))),
                  const SizedBox(width: Measures.small),
                  Expanded(
                    child: DefaultDecorator(
                        child: Padding(
                          padding:
                              const EdgeInsets.all(Measures.small),
                          child: DepositForm(record: record, product: product,),
                        )),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: actionsFlex,
              child: Row(
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
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                ],
              ),
            )
          ],
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
            child:
                DefaultButton(label: Labels.search, onPressed: onSearch)),
      ],
    );
  }
}
