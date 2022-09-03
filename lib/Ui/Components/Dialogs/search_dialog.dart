
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SearchEditor extends StatelessWidget{
  
  SearchEditor({Key? key, required this.searchFieldBuilder, required this.searchCallback}) : super(key: key);
  
  final List<Callback<SelectorBuilder>> callbacks = [];

  final SearchFieldsBuilder searchFieldBuilder;

  final Callback<AppJson> searchCallback;

  void registerCallback(Callback<SelectorBuilder> callback){
    callbacks.add(callback);
  }

  void unregisterCallback(Callback<SelectorBuilder> callback){
    callbacks.remove(callback);
  }

  void onSearch(){
    SelectorBuilder selector = SelectorBuilder();
    for (var callback in callbacks){
      callback(selector);
    }
    searchCallback(selector.map);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child : Padding(padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisSize: MainAxisSize.max,
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
                onSearch();
                Navigator.pop(context);
              },),
            ],
          )
        ]
      ),
      )
    );
  }
}