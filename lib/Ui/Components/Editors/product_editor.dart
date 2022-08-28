
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ProductEditor extends StatelessWidget{
  const ProductEditor({Key? key, required this.editMode, this.product}) : super(key: key);

  final bool editMode;
  final Product? product;
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child : Padding(padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Expanded(child: AttributeTextField(
            initialValue: product?.name,
            label: Labels.name,
          )),
          Expanded(child: AttributeTextField(
            initialValue: product?.reference ,
            label: Labels.reference,
          )),
           Expanded(child: AttributeTextField(
            initialValue: product?.barcode.toString(),
            label: Labels.barcode,
          )),
          Expanded(child: AttributeTextField(
            initialValue: product?.minSellingPrice.toString() ,
            label: Labels.minSellingPrice,
          )),
          Expanded(child: AttributeTextField(
            initialValue: product?.buyingPrice.toString() ,
            label: Labels.buyingPrice,
          )),
          Expanded(child: AttributeTextField(
            initialValue: product?.sellingPrice.toString(),
            label: Labels.sellingPrice,
          )),
          Expanded(child: AttributeTextField(
            initialValue: product?.totalQuantity.toString() ,
            label: Labels.totalQuantity,
          )),
          Expanded(child: AttributeTextField(
            initialValue: product?.categoryId.toString(),
            label: Labels.categoryId,
          )),
          Row(
            children: [
              DefaultButton(label: Labels.cancel,onPressed: (){}),
              DefaultButton(label: Labels.save,onPressed: (){},),
            ],
          )
        ]
      ),
      )
    );
  }
}