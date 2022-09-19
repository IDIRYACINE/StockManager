import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_form.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'package:stock_manager/l10n/generated/app_translations.dart';

class SaleEditor extends StatelessWidget {
  const SaleEditor(
      {Key? key,
      required this.record,
      this.editMode = false,
      required this.confirmLabel,
      this.addSaleCallback,
      this.editCallback,
      this.onSearch,
      this.addSaleProductCallback})
      : assert(
          (editMode && editCallback != null) ||
              (!editMode && addSaleCallback != null),
          'editMode and its callback must be set together',
        ),
        super(key: key);

  final Record record;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;

  final Callback<Record>? addSaleCallback;
  final Callback<RecordProduct>? addSaleProductCallback;

  final EditorCallback<AppJson, Record>? editCallback;

  final bool editMode;
  final EditorSearchCallback? onSearch;
  final String confirmLabel;

  @override
  Widget build(BuildContext context) {
    RecordProduct recordProduct = RecordProduct.defaultInstance();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final ValueNotifier<Product> product =
        ValueNotifier(Product.defaultInstance());

    final SaleEditorMode saleEditorMode = editMode
        ? SaleEditorMode.editModeInstance(record)
        : SaleEditorMode.createModeInstance(record);

    final ProductFormEditor productFormEditor = ProductFormEditor();

    void updateProduct(List<Product> products) {
      if (products.isNotEmpty) {
        Product p = products.first;
        productFormEditor.productNameController.text = p.name;
        productFormEditor.minSellingPriceController.text =
            p.sellingPrice.toString();
        productFormEditor.sellingPriceController.text =
            p.sellingPrice.toString();
        productFormEditor.familyController.text = p.productFamily;
        productFormEditor.referenceController.text = p.reference;
        productFormEditor.remainingQuantity.text = p.totalQuantity.toString();

        saleEditorMode.setRecordProduct(recordProduct);

        recordProduct.product = p.name;
        recordProduct.reference = p.reference;
        recordProduct.sellingPrice = p.sellingPrice;
        recordProduct.deposit = p.sellingPrice;

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
            if (!editMode)
              Flexible(
                flex: searchBarFlex,
                child: DefaultDecorator(
                  child: SearchBar(onSearch: _onSearch),
                ),
              ),
            Expanded(
              flex: bodyFlex,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: DefaultDecorator(
                          child: SingleChildScrollView(
                    child: ProductForm(
                      product: product,
                      productFormEditor: productFormEditor,
                    ),
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
                        sellingPriceController:
                            productFormEditor.sellingPriceController,
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
                      label: Translations.of(context)!.cancel,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  DefaultButton(
                    label: Translations.of(context)!.done,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (editMode) {
                          saleEditorMode.confirm(editCallback);
                        } else {
                          saleEditorMode.confirm(addSaleCallback);
                        }
                        Navigator.pop(context);
                      }
                    },
                  ),
                  DefaultButton(
                    label: confirmLabel,
                    onPressed: () {
                      saleEditorMode.appendRecordProduct();
                      addSaleProductCallback?.call(recordProduct);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
