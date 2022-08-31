import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({Key? key, required this.editMode, required this.product})
      : super(key: key);

  final Product product;
  final bool editMode;

  void setBarcode(String? barcode) {
    if (barcode != null) {
    product.barcode = int.parse(barcode);
    }
  }

  void setName(String? name) {
    if (name != null) {
      product.name = name;
    }
  }

  void setReference(String? reference) {
    if (reference != null) {
      product.reference = reference;
    }
  }

  void setProductFamily(String productFamily) {
    product.productFamily = productFamily;
  }

  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null) {
      product.originalPrice = double.parse(buyingPrice);
    }
  }

  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      product.sellingPrice = double.parse(sellingPrice);
    }
  }

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
            onSelect: (value) => {setProductFamily(value.name)},
            adapter: buildProductFamilyDropdownMenuItem,
            items: Provider.of<StockLiveDataModel>(context,listen: false).loadedProductFamillies,
            label: const Text(Labels.selectProductFamily),
            
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.name,
            label: Labels.name,
            onChanged: setName,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.reference,
            label: Labels.reference,
            onChanged: setReference,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.barcode.toString(),
            onChanged: setBarcode,
            label: Labels.barcode,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.originalPrice.toString(),
            onChanged: setBuyingPrice,
            label: Labels.buyingPrice,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            onChanged: setSellingPrice,
            label: Labels.sellingPrice,
          )),
        ],
      ),
    );
  }
}
