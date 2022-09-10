import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
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
  final Callback2<String, String> sizeSelectorCallback, colorSelectorCallback;

  @override
  State<StatefulWidget> createState() => _ModelSelectorState();
}

class _ModelSelectorState extends State<ModelSelector> {
  String? selectedColorIndex;
    String? selectedSizeIndex;


  void onColorSelected(String colorIndex) {
    setState(() {
      selectedColorIndex = colorIndex;
      selectedSizeIndex = null;
      String color = widget.productModels[colorIndex]!.color;
      widget.colorSelectorCallback(color, colorIndex);
    });
  }

  void onSizeSelected(String index) {
    String size = widget.productModels[selectedColorIndex]!.sizes[index]!.size;
    selectedSizeIndex = index;
    widget.sizeSelectorCallback(size, index);
  }

  List<DropdownMenuItem<String>> sizesDropdowns() {
    ProductModel? model = widget.productModels[selectedColorIndex];

    if (model == null) return [];
    List<DropdownMenuItem<String>> dropdowns = [];

    model.sizes.forEach((key, value) {
      dropdowns
          .add(DropdownAdapters.stringDropDownMenuItemAdapter(value.size, key));
    });

    return dropdowns;
  }

  List<DropdownMenuItem<String>> colorsDropdowns() {
    if (widget.productModels.isEmpty) return [];

    List<DropdownMenuItem<String>> dropdowns = [];

    widget.productModels.forEach((key, value) {
      dropdowns.add(
          DropdownAdapters.stringDropDownMenuItemAdapter(value.color, key));
    });

    return dropdowns;
  }


  String? getSelectedSize(){
    String? size = widget.productModels[selectedColorIndex]?.sizes[selectedSizeIndex]?.size;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    final sizes = sizesDropdowns();

    final colors = colorsDropdowns();

    return Row(
      children: [
        Expanded(
            child: SelectorDropDown<String>(
                onSelect: onColorSelected,
                initialSelection: selectedColorIndex,
                items: colors,
                label: const Text(Labels.colors))),
        const SizedBox(
          width: Measures.small,
        ),
        Expanded(
            child: SelectorDropDown<String>(
          onSelect: onSizeSelected,
          initialSelection: selectedSizeIndex,
          items: sizes,
          label: const Text(Labels.sizes),
        )),
      ],
    );
  }
}
