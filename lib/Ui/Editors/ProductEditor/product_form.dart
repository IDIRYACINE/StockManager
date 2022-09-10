import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'product_mode.dart';

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
        Provider.of<LiveModelProvider>(context, listen: false).stockLiveModel;


    final familliesDropdown = stockLiveModel.loadedProductFamillies
        .map((e) => DropdownAdapters.productFamilyMenuItemAdapter(e))
        .toList();

    final ValueNotifier<ProductFamily?> familyNotifier = ValueNotifier(stockLiveModel.searchProductFamily(product.familyReference));



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
            label: const Text(Labels.selectProductFamily),
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.name,
            label: Labels.name,
            onChanged: productEditorMode.setName,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.reference,
            label: Labels.reference,
            onChanged: productEditorMode.setReference,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.barcode.toString(),
            onChanged: productEditorMode.setBarcode,
            label: Labels.barcode,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.buyingPrice.toString(),
            onChanged: productEditorMode.setBuyingPrice,
            label: Labels.buyingPrice,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            onChanged: productEditorMode.setSellingPrice,
            label: Labels.sellingPrice,
          )),
        ],
      ),
    );
  }
}
