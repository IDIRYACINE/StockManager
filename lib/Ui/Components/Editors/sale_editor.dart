
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SaleEditor extends StatelessWidget{
  const SaleEditor({Key? key, required this.editMode, this.record}) : super(key: key);

  final bool editMode;
  final Record? record;
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child : Padding(padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Expanded(child: 
            AttributeTextField(
              initialValue: record?.sellerName,
              label: Labels.reference,
            )
          ),
          Expanded(child: AttributeTextField(
            initialValue: record?.quantity.toString(),
            label: Labels.reference,
          )),
          Expanded(child: 
            AttributeTextField(
              initialValue: record?.product,
              label: Labels.reference,
            )
          ),
          Expanded(child: ModelSelector()),

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