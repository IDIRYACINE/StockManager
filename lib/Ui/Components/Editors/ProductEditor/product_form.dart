
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({Key? key, required this.editMode, required this.product})
      : super(key: key);

  final Product product;
  final bool editMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Measures.medium),
      child: Column(
        children: [
           const Expanded(
              child: SelectorDropDown<String>(items: ["Family1"],label: Text(Labels.selectProductFamily),)),
        
          Expanded(
              child: AttributeTextField(
            initialValue: product.name,
            label: Labels.name,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.reference,
            label: Labels.reference,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.barcode.toString(),
            label: Labels.barcode,
          )),
          
          Expanded(
              child: AttributeTextField(
            initialValue: product.buyingPrice.toString(),
            label: Labels.buyingPrice,
          )),
          Expanded(
              child: AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            label: Labels.sellingPrice,
          )),
        
         ],
      ),
    );
  }
}