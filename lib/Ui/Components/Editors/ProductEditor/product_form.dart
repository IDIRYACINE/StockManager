import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'product_editor.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({Key? key, required this.editMode, required this.product, required this.modeDelegate})
      : super(key: key);

  final Product product;
  final bool editMode;
  final ModeDelegate modeDelegate ;
  


  DropdownMenuItem<ProductFamily> buildProductFamilyDropdownMenuItem(
      ProductFamily productFamily) {
    return DropdownMenuItem(
      value: productFamily,
      child: Text(productFamily.name),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(Measures.medium),
      child: Column(
        children: [
          Expanded(
              child: SelectorDropDown<ProductFamily>(
            onSelect: (value) => {modeDelegate.setProductFamily(value.name)},
            adapter: buildProductFamilyDropdownMenuItem,
            items: Provider.of<StockLiveDataModel>(context,listen: false).loadedProductFamillies,
            label: const Text(Labels.selectProductFamily),
            
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.name,
            label: Labels.name,
            onChanged: modeDelegate.setName,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.reference,
            label: Labels.reference,
            onChanged: modeDelegate.setReference,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.barcode.toString(),
            onChanged: modeDelegate.setBarcode,
            label: Labels.barcode,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.originalPrice.toString(),
            onChanged: modeDelegate.setBuyingPrice,
            label: Labels.buyingPrice,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            onChanged: modeDelegate.setSellingPrice,
            label: Labels.sellingPrice,
          )),
        ],
      ),
    );
  }
}
