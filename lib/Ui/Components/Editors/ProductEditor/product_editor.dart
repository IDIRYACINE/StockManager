import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'product_form.dart';
import 'product_models.dart';

class ProductEditor extends StatelessWidget {
  const ProductEditor(
      {Key? key,
      this.editMode = false,
      this.createCallback,
      required this.confirmLabel,
      required this.product,
      this.editCallback})
      : assert(
        (editMode && editCallback != null) || (!editMode && createCallback != null),
        'editMode and its callback must be set together',
      )
      ,super(key: key)
      
      ;

  final bool editMode;
  final int upperRowFlex = 8;
  final int lowerRowFlex = 1;
  final Product product;
  final Callback<Product>? createCallback;
  final EditorCallback<AppJson,Product>? editCallback;
  final String confirmLabel;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final  dynamic modeDelegate =
        editMode ? ProductEditorMode.createModeInstance(product) : ProductEditorMode.editModeInstance(product);
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
                            productEditorMode: modeDelegate,
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
                                child: DefaultDecorator(
                              child: BrowseImage(
                                imageUrl: product.imageUrl,
                                onImageSelected: modeDelegate.setImage,
                              ),
                            )),
                            Flexible(
                                child: DefaultDecorator(
                                    child: ProductModels(product: product))),
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
                        child: DefaultButton(
                            label: Labels.cancel,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Flexible(
                        child: DefaultButton(
                          label: confirmLabel,
                          onPressed: () {
                            if (editMode) {
                              modeDelegate.confirm(
                                editCallback,
                              );
                            } else {
                              modeDelegate.confirm(
                                createCallback,
                              );
                            }
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
