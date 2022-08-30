
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SearchEditor extends StatelessWidget{
  
  SearchEditor({Key? key, required this.searchFieldBuilder}) : super(key: key);
  
  final List<ValueCallback<SelectorBuilder>> callbacks = [];

  final SearchFieldsBuilder searchFieldBuilder;

  void registerCallback(ValueCallback<SelectorBuilder> callback){
    callbacks.add(callback);
  }

  void unregisterCallback(ValueCallback<SelectorBuilder> callback){
    callbacks.remove(callback);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child : Padding(padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          ...searchFieldBuilder(registerCallback, unregisterCallback),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultButton(label: Labels.cancel,onPressed: (){
                Navigator.pop(context);
              }),
              DefaultButton(label: Labels.search,onPressed: (){

              },),
            ],
          )
        ]
      ),
      )
    );
  }
}