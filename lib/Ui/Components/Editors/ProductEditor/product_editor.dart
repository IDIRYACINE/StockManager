import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'product_form.dart';
import 'product_models.dart';

class ProductEditor extends StatelessWidget {
  const ProductEditor({Key? key, this.editMode = false, required this.confirmCallback, required this.confirmLabel, required this.product})
      : super(key: key);

  final bool editMode;
  final int upperRowFlex = 8;
  final int lowerRowFlex = 1;
  final Product product;
  final Callback<Product> confirmCallback;
  final String confirmLabel;

  void setImage(String url){
    product.imageUrl = url;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Expanded(
              flex: upperRowFlex,
              child: Row(
                children: [
                  Expanded(
                    child: DefaultDecorator(
                      child: ProductForm(
                        editMode: editMode,
                        product: product,
                      ),
                    ),
                  ),
                  const SizedBox(width: Measures.small),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Flexible(
                            child: DefaultDecorator(child:BrowseImage(imageUrl:product.imageUrl, onImageSelected: setImage,),)),
                        Flexible(
                            child: DefaultDecorator(
                                child:
                                    ProductModels(product: product))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: lowerRowFlex,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: DefaultButton(label: Labels.cancel, onPressed: () {
                      Navigator.pop(context);
                    }),
                  ),
                  Flexible(
                    child: DefaultButton(
                      label: confirmLabel,
                      onPressed: () {
                              confirmCallback(product);
                              Navigator.pop(context);
                  
                      },
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
