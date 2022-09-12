import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'deposit_form.dart';
import 'deposit_mode.dart';

class DepositEditor extends StatelessWidget {
  const DepositEditor({
    Key? key,
    this.editMode = false,
    required this.record,
    this.createCallback,
    required this.confirmLabel,
    this.onSearch,
    this.editCallback,
  })  : assert(
          (editMode && editCallback != null) ||
              (!editMode && createCallback != null),
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
  final Callback<Record>? createCallback;
  final EditorCallback<AppJson, Record>? editCallback;
  final String confirmLabel;
  final EditorSearchCallback? onSearch;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final ValueNotifier<Product> product =
        ValueNotifier(Product.defaultInstance());

    final dynamic depositMode = editMode
        ? DepositEditorMode.editModeInstance(record)
        : DepositEditorMode.createModeInstance(record);

    void updateProduct(List<Product> products) {
      if (products.isNotEmpty) {
        Product p = products.first;

        depositMode.nameController.text = p.name;
        depositMode.referenceController.text = p.reference;
        depositMode.familyController.text = p.productFamily;
        depositMode.minSellingPriceController.text = p.sellingPrice.toString();
        depositMode.sellingPriceController.text = p.sellingPrice.toString();
        depositMode.remainingQuantity.text = p.totalQuantity.toString();

        record.barcode = p.barcode;
        record.reference = p.reference;
        record.sellingPrice = p.sellingPrice;
        record.product = p.name;
        record.remainingPayement = p.sellingPrice - record.deposit;
        record.originalPrice = p.buyingPrice;

        product.value = p;
      }
    }

    void _onSearch(String barcode) {
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
                  child: _SearchBar(onSearch: _onSearch),
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
                        label: Labels.cancel,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    DefaultButton(
                      label: confirmLabel,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (editMode) {
                            depositMode.confirm(editCallback);
                          } else {
                            depositMode.confirm(createCallback);
                          }
                          Navigator.pop(context);
                        }
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
            label: Labels.reference,
            initialValue: searchValue,
            onChanged: setSearchValue,
          ),
        ),
        Flexible(
          child: DefaultButton(
            label: Labels.search,
            onPressed: () {
              onSearch(searchValue);
            },
          ),
        ),
      ],
    );
  }
}
