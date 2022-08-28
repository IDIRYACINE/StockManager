
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SearchEditor extends StatelessWidget{
  
  const SearchEditor({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child : Padding(padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          
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