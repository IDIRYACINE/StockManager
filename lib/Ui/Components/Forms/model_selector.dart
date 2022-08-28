
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ModelSelector extends StatefulWidget{

  const ModelSelector({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ModelSelectorState();
 
}

class _ModelSelectorState extends State<ModelSelector>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SelectorDropDown<String>(items: ["red","yellow"],label: Text(Labels.colors)),
        SelectorDropDown<String>(items: ["s","m"],label: Text(Labels.sizes),),
      ],
    );
  }
}