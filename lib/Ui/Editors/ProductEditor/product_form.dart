import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

import '../../../Application/Systems/product_mode.dart';

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
    final StockLiveDataModel stockLiveModel =
        Provider.of<ControllersProvider>(context, listen: false).stockLiveModel;


    final familliesDropdown = stockLiveModel.loadedProductFamillies
        .map((e) => DropdownAdapters.productFamilyMenuItemAdapter(e))
        .toList();

    ProductFamily? initialFamily = stockLiveModel.searchProductFamily(product.familyReference);    

    final ValueNotifier<ProductFamily?> familyNotifier = ValueNotifier(initialFamily);



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
            items: familliesDropdown,
            label:  Text(Translations.of(context).selectProductFamily),
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.name,
            label: Translations.of(context).name,
            onChanged: productEditorMode.setName,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.reference,
            label: Translations.of(context).reference,
            onChanged: productEditorMode.setReference,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.barcode.toString(),
            onChanged: productEditorMode.setBarcode,
            label: Translations.of(context).barcode,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.buyingPrice.toString(),
            onChanged: productEditorMode.setBuyingPrice,
            label: Translations.of(context).buyingPrice,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            onChanged: productEditorMode.setSellingPrice,
            label: Translations.of(context).sellingPrice,
          )),
        ],
      ),
    );
  }
}
