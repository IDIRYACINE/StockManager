
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ModelSelector extends StatefulWidget{

  const ModelSelector({Key? key, required this.productModels, required this.sizeSelectorCallback, required this.colorSelectorCallback}) : super(key: key);

  final List<ProductModel> productModels;
  final Callback<String> sizeSelectorCallback,colorSelectorCallback ;

  @override
  State<StatefulWidget> createState() => _ModelSelectorState();
 
}

class _ModelSelectorState extends State<ModelSelector>{

  void onColorSelected(ProductModel model){}

  void onSizeSelected(ProductModel model){}

  DropdownMenuItem<ProductModel> sizeAdapter(ProductModel model){
    return DropdownMenuItem(
      value: model,
      child: Text(model.size),
    );
  }


  DropdownMenuItem<ProductModel> colorAdapter(ProductModel model){
    return DropdownMenuItem(
      value: model,
      child: Text(model.color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Expanded(child: SelectorDropDown(
          onSelect: onColorSelected,
          adapter: colorAdapter,
          items: widget.productModels,label: const Text(Labels.colors))),
        const SizedBox(width: Measures.small,),
        Expanded(child: SelectorDropDown(
          onSelect: onSizeSelected,
          adapter: sizeAdapter,
          items:widget.productModels,label: const Text(Labels.sizes),)),
      ],
    );
  }
}