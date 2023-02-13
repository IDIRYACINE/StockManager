import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'deposit_form.dart';

class DepositEditor extends StatelessWidget {
  const DepositEditor({
    Key? key,
    this.editMode = false,
    required this.record,
    required this.confirmLabel,
    this.onSearch,
    this.editCallback,
    this.addDepositCallback,
    this.addDepositProductCallback,
  })  : assert(
          (editMode && editCallback != null) ||
              (!editMode && addDepositCallback != null),
          'editMode and its callback must be set together',
        ),
        assert(!editMode && onSearch != null,
            'editMode and onSearch must be set together'),
        super(key: key);

  final bool editMode;
  final Record record;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;
  final Callback<Record>? addDepositCallback;
  final Callback<RecordProduct>? addDepositProductCallback;

  final EditorCallback<AppJson, Record>? editCallback;
  final String confirmLabel;
  final EditorSearchCallback? onSearch;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    RecordProduct recordProduct = RecordProduct.defaultInstance();

    final ValueNotifier<Product> product =
        ValueNotifier(Product.defaultInstance());

    final SaleEditorMode depositMode = editMode
        ? SaleEditorMode.editModeInstance(record)
        : SaleEditorMode.createModeInstance(record);

    void updateProduct(List<Product> products) {
      if (products.isNotEmpty) {
        Product p = products.first;

        depositMode.nameController.text = p.name;
        depositMode.referenceController.text = p.reference;
        depositMode.familyController.text = p.productFamily;
        depositMode.minSellingPriceController.text = p.sellingPrice.toString();
        depositMode.sellingPriceController.text = p.sellingPrice.toString();
        depositMode.remainingQuantity.text = p.totalQuantity.toString();
        depositMode.depositController.text = '0';
        depositMode.setRemainingPayement(p.sellingPrice.toString());

        depositMode.setRecordProduct(recordProduct);

        recordProduct.product = p.name;
        recordProduct.reference = p.reference;
        recordProduct.sellingPrice = p.sellingPrice;
        recordProduct.deposit = 0;
        recordProduct.remainingPayement = p.sellingPrice;

        product.value = p;
      }
    }

    void onSearchResult(String barcode) {
      onSearch?.call(barcode, updateProduct);
    }

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingNormal),
      child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: searchBarFlex,
                child: DefaultDecorator(
                  child: _SearchBar(onSearch: onSearchResult),
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
                      editorMode: depositMode,
                    ))),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: DefaultDecorator(
                          child: DepositForm(
                        depositMode: depositMode,
                        record: record,
                        product: product,
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
                            depositMode.confirm(editCallback);
                          } else {
                            depositMode.confirm(addDepositCallback);
                          }
                          Navigator.pop(context);
                        }
                      },
                    ),
                    DefaultButton(
                      label: confirmLabel,
                      onPressed: () {
                        depositMode.appendRecordProduct();
                        addDepositProductCallback?.call(recordProduct);
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key, required this.onSearch}) : super(key: key);

  final Callback<String> onSearch;

  @override
  Widget build(BuildContext context) {
    String searchValue = '';

    void setSearchValue(String? value) {
      if (value != null) {
        searchValue = value;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AttributeTextField(
            label: Translations.of(context)!.reference,
            initialValue: searchValue,
            onChanged: setSearchValue,
          ),
        ),
        Flexible(
          child: DefaultButton(
            label: Translations.of(context)!.search,
            onPressed: () {
              onSearch(searchValue);
            },
          ),
        ),
      ],
    );
  }
}
