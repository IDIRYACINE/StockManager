import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'product_form.dart';
import 'product_models.dart';

class ProductEditor extends StatelessWidget {
  const ProductEditor({Key? key, this.editMode = false, this.product})
      : super(key: key);

  final bool editMode;
  final Product? product;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final productInstance = product ?? Product();

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: DefaultDecorator(
                      child: ProductForm(
                        editMode: editMode,
                        product: productInstance,
                      ),
                    ),
                  ),
                  const SizedBox(width: Measures.small),
                  Expanded(
                    child: Column(
                      children: [
                        const Expanded(
                            child: DefaultDecorator(child: BrowseImage())),
                        const SizedBox(width: Measures.small),
                        Expanded(
                            child: DefaultDecorator(
                                child:
                                    ProductModels(product: productInstance))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Measures.small),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DefaultButton(label: Labels.cancel, onPressed: () {}),
                DefaultButton(
                  label: Labels.save,
                  onPressed: () {},
                ),
              ],
            )
          ]),
        ));
  }
}
