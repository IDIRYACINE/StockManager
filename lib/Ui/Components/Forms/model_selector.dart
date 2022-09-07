import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ModelSelector extends StatefulWidget {
  const ModelSelector(
      {Key? key,
      required this.productModels,
      required this.sizeSelectorCallback,
      required this.colorSelectorCallback})
      : super(key: key);

  final List<ProductModel> productModels;
  final Callback<String> sizeSelectorCallback, colorSelectorCallback;

  @override
  State<StatefulWidget> createState() => _ModelSelectorState();
}

class _ModelSelectorState extends State<ModelSelector> {
  int selectedColorIndex = 0;

  void onColorSelected(ProductModel model) {
    selectedColorIndex = widget.productModels.indexOf(model);

    widget.colorSelectorCallback(model.color);
  }

  void onSizeSelected(int index) {
    widget.sizeSelectorCallback(
        widget.productModels[selectedColorIndex].sizes[index]);
  }

  List<int> sizesIndexes() {
    List<int> indexes = [];
    if(widget.productModels.isEmpty){
      return indexes;
    }
    for (int i = 0;
        i < widget.productModels[selectedColorIndex].sizes.length;
        i++) {
      indexes.add(i);
    }
    return indexes;
  }

  DropdownMenuItem<int> sizeAdapter(int sizeIndex) {
    ProductModel model = widget.productModels[selectedColorIndex];

    return DropdownMenuItem(
      value: sizeIndex,
      child: Text(model.sizes[sizeIndex]),
    );
  }

  DropdownMenuItem<ProductModel> colorAdapter(ProductModel model) {
    selectedColorIndex = model.index;

    return DropdownMenuItem(
      value: model,
      child: Text(model.color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SelectorDropDown<ProductModel>(
                onSelect: onColorSelected,
                adapter: colorAdapter,
                items: widget.productModels,
                label: const Text(Labels.colors))),
        const SizedBox(
          width: Measures.small,
        ),
        Expanded(
            child: SelectorDropDown<int>(
          onSelect: onSizeSelected,
          adapter: sizeAdapter,
          items: sizesIndexes(),
          label: const Text(Labels.sizes),
        )),
      ],
    );
  }
}
