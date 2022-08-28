
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SellersEditor extends StatelessWidget{
  const SellersEditor({Key? key, this.editMode = false, this.sellers}) : super(key: key);

  final bool editMode;
  final Seller? sellers;
  
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
            initialValue: sellers?.name,
            label: Labels.name,
          )),
          Expanded(child: AttributeTextField(
            initialValue: sellers?.phone.toString() ,
            label: Labels.reference,
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