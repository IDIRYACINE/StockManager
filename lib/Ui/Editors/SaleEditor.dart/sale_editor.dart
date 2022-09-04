import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_editors.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_form.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'sale_mode.dart';

class SaleEditor extends StatelessWidget {
  const SaleEditor(
      {Key? key,
      required this.record,
      this.editMode = false,
      required this.confirmLabel,
      this.createCallback,
      this.editCallback,
      this.onSearch})
      : assert(
          (editMode && editCallback != null) ||
              (!editMode && createCallback != null),
          'editMode and its callback must be set together',
        ),
        super(key: key);

  final Record record;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;

  final Callback<Record>? createCallback;
  final EditorCallback<AppJson, Record>? editCallback;

  final bool editMode;
  final EditorSearchCallback? onSearch;
  final String confirmLabel;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final ValueNotifier<Product> product =
        ValueNotifier(Product.defaultInstance());


    final dynamic saleEditorMode = editMode
        ? SaleEditorMode.editModeInstance(record)
        : SaleEditorMode.createModeInstance(record);
    final ProductFormEditor productFormEditor = ProductFormEditor(
    
    );

    void updateProduct(List<Product> products) {
      if (products.isNotEmpty) {
        Product p = products.first;
        productFormEditor.productNameController.text = p.name;
        productFormEditor.minSellingPriceController.text = p.sellingPrice.toString();
        productFormEditor.sellingPriceController.text = p.sellingPrice.toString();
        productFormEditor.familyController.text = p.productFamily;
        productFormEditor.referenceController.text = p.reference;

        record.product = p.name;
        record.reference = p.reference;
        record.barcode = p.barcode;
        record.originalPrice = p.originalPrice;
        record.sellingPrice = p.sellingPrice;

        product.value = p;
      }
    }

    void _onSearch(String barcode) {
      onSearch?.call(barcode, updateProduct);
    }

    return Padding(
        padding: const EdgeInsets.all(Measures.paddingLarge),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: searchBarFlex,
                child: DefaultDecorator(
                  child:SearchBar(onSearch: _onSearch),
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
                      productFormEditor: productFormEditor,
                    ))),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: DefaultDecorator(
                          child: Padding(
                        padding: const EdgeInsets.all(Measures.small),
                        child: SaleForm(
                          product: product,
                          record: record,
                          saleEditorMode: saleEditorMode, 
                          sellingPriceController: productFormEditor.sellingPriceController,
                        ),
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
                      label: confirmLabel,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (editMode) {
                            saleEditorMode.confirm(editCallback);
                          } else {
                            saleEditorMode.confirm(createCallback);
                          }
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
