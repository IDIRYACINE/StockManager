import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
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
        editMode ? _EditDelegate(product) : _CreateDelegate(product);
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
                            modeDelegate: modeDelegate,
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

abstract class ModeDelegate<T> {
  void setBarcode(String? barcode);

  void setName(String? name);

  void setReference(String? reference);

  void setProductFamily(String productFamily);
  void setBuyingPrice(String? buyingPrice);

  void setSellingPrice(String? sellingPrice);

  void setImage(String? imageUrl);

  void confirm(T confirmCallback);
}

class _EditDelegate implements ModeDelegate<EditorCallback<AppJson,Product>> {
  _EditDelegate(this.product);

  final Product product;
  final ModifierBuilder queryBuilder = ModifierBuilder();

  Map<ProductFields, dynamic> updatedField = {};

  @override
  void setBarcode(String? barcode) {
    if (barcode != null) {
      product.barcode = int.parse(barcode);
      updatedField[ProductFields.barcode] = product.barcode;
    }
  }

  @override
  void setName(String? name) {
    if (name != null) {
      product.name = name;
      updatedField[ProductFields.name] = name;
    }
  }

  @override
  void setReference(String? reference) {
    if (reference != null) {
      product.reference = reference;
      updatedField[ProductFields.reference] = reference;
    }
  }

  @override
  void setProductFamily(String productFamily) {
    product.productFamily = productFamily;
    updatedField[ProductFields.family] = productFamily;
  }

  @override
  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null) {
      product.originalPrice = double.parse(buyingPrice);
      updatedField[ProductFields.buyingPrice] = product.originalPrice;
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      product.sellingPrice = double.parse(sellingPrice);
      updatedField[ProductFields.sellingPrice] = product.sellingPrice;
    }
  }

  @override
  void setImage(String? imageUrl) {
    if (imageUrl != null) {
      product.imageUrl = imageUrl;
      updatedField[ProductFields.imageUrl] = product.imageUrl;
    }
  }

  @override
  void confirm(EditorCallback<AppJson,Product> confirmCallback) {
    updatedField.forEach((key, value) {
      queryBuilder.set(key.toString(), value);
    });
    confirmCallback(queryBuilder.map,product);
  }
}

class _CreateDelegate implements ModeDelegate<Callback<Product>> {
  _CreateDelegate(this.product);

  final Product product;

  @override
  void setBarcode(String? barcode) {
    if (barcode != null) {
      product.barcode = int.parse(barcode);
    }
  }

  @override
  void setName(String? name) {
    if (name != null) {
      product.name = name;
    }
  }

  @override
  void setReference(String? reference) {
    if (reference != null) {
      product.reference = reference;
    }
  }

  @override
  void setProductFamily(String productFamily) {
    product.productFamily = productFamily;
  }

  @override
  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null) {
      product.originalPrice = double.parse(buyingPrice);
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      product.sellingPrice = double.parse(sellingPrice);
    }
  }

  @override
  void setImage(String? imageUrl) {
    if (imageUrl != null) {
      product.imageUrl = imageUrl;
    }
  }

  @override
  void confirm(Callback<Product> confirmCallback) {
    confirmCallback(product);
  }
}
