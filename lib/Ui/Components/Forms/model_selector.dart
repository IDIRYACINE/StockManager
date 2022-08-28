
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ModelSelector extends StatefulWidget{

  const ModelSelector({Key? key, required this.productModles}) : super(key: key);

  final List<ProductModel> productModles;

  @override
  State<StatefulWidget> createState() => _ModelSelectorState();
 
}

class _ModelSelectorState extends State<ModelSelector>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: SelectorDropDown<String>(items: ["red","yellow"],label: Text(Labels.colors))),
        SizedBox(width: Measures.small,),
        Expanded(child: SelectorDropDown<String>(items: ["s","m"],label: Text(Labels.sizes),)),
      ],
    );
  }
}