import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Editors/Models/product_mode.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';


class ProductForm extends StatelessWidget {
  const ProductForm(
      {Key? key,
      required this.editMode,
      required this.product,
      required this.productEditorMode})
      : super(key: key);

  final Product product;
  final bool editMode;
  final ProductEditorMode productEditorMode;


  @override
  Widget build(BuildContext context) {



    final ValueNotifier<ProductFamily?> familyNotifier = ValueNotifier(null);



    return Padding(
      padding: const EdgeInsets.all(Measures.medium),
      child: Column(
        children: [
          Flexible(
              child: SelectorDropDown<ProductFamily>(
            onSelect: (family) 
                {
                  productEditorMode.setProductFamily(family.name,family.reference);
                  familyNotifier.value = family;
                  },
            initialSelection:familyNotifier
                ,
            items: const[],
            label:  Text(Translations.of(context)!.
selectProductFamily),
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.name,
            label: Translations.of(context)!.
name,
            onChanged: productEditorMode.setName,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.reference,
            label: Translations.of(context)!.
reference,
            onChanged: productEditorMode.setReference,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.barcode.toString(),
            onChanged: productEditorMode.setBarcode,
            label: Translations.of(context)!.
barcode,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.buyingPrice.toString(),
            onChanged: productEditorMode.setBuyingPrice,
            label: Translations.of(context)!.
buyingPrice,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            onChanged: productEditorMode.setSellingPrice,
            label: Translations.of(context)!.
sellingPrice,
          )),
        ],
      ),
    );
  }
}
