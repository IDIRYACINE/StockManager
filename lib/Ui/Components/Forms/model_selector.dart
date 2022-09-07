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

  final Map<String, ProductModel> productModels;
  final Callback<String> sizeSelectorCallback, colorSelectorCallback;

  @override
  State<StatefulWidget> createState() => _ModelSelectorState();
}

class _ModelSelectorState extends State<ModelSelector> {
  String selectedColorIndex = "0";

  @override
  void initState() {
    if (widget.productModels.isNotEmpty) {
      selectedColorIndex = widget.productModels.keys.first;
    }
    super.initState();
  }

  void onColorSelected(String colorIndex) {
    setState(() {
      selectedColorIndex = colorIndex;
      String color = widget.productModels[colorIndex]!.color;
      widget.colorSelectorCallback(color);
    });
  }

  void onSizeSelected(String index) {
    widget.sizeSelectorCallback(
        widget.productModels[selectedColorIndex]!.sizes[index]!.size);
  }

  List<String> sizesIndexes() {
    return widget.productModels[selectedColorIndex]?.sizes.keys.toList() ?? [];
  }

  DropdownMenuItem<String> sizeAdapter(String sizeIndex) {
    String size =
        widget.productModels[selectedColorIndex]!.sizes[sizeIndex]!.size;

    return DropdownMenuItem(
      value: sizeIndex,
      child: Text(size),
    );
  }

  DropdownMenuItem<String> colorAdapter(String index) {
    selectedColorIndex = index;
    String color = widget.productModels[index]!.color;

    return DropdownMenuItem(
      value: index,
      child: Text(color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SelectorDropDown<String>(
                onSelect: onColorSelected,
                adapter: colorAdapter,
                items: widget.productModels.keys.toList(),
                label: const Text(Labels.colors))),
        const SizedBox(
          width: Measures.small,
        ),
        Expanded(
            child: SelectorDropDown<String>(
          onSelect: onSizeSelected,
          adapter: sizeAdapter,
          items: sizesIndexes(),
          label: const Text(Labels.sizes),
        )),
      ],
    );
  }
}
