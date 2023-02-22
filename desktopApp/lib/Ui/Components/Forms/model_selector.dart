import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

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
  ValueNotifier<String?> selectedColorIndex = ValueNotifier(null);
  ValueNotifier<String?> selectedSizeIndex = ValueNotifier(null);

  List<DropdownMenuItem<String>>? sizes;

  void onColorSelected(String colorIndex) {
    ProductModel model = widget.productModels[colorIndex]!;
    selectedColorIndex.value = colorIndex;
    String color = model.color;
    selectedSizeIndex.value = model.sizes.keys.first;
    String size = model.sizes[selectedSizeIndex.value]!.size;
    widget.colorSelectorCallback(color, colorIndex);
    widget.sizeSelectorCallback(size, selectedSizeIndex.value!);
  }

  void onSizeSelected(String index) {
    String size =
        widget.productModels[selectedColorIndex.value]!.sizes[index]!.size;
    selectedSizeIndex.value = index;
    widget.sizeSelectorCallback(size, index);
  }

  List<DropdownMenuItem<String>> sizesDropdowns() {
    ProductModel? model = widget.productModels[selectedColorIndex.value];

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

  @override
  Widget build(BuildContext context) {
    final colors = colorsDropdowns();

    return Row(
      children: [
        Expanded(
            child: SelectorDropDown<String>(
                onSelect: onColorSelected,
                initialSelection: selectedColorIndex,
                items: colors,
                label:  Text(Translations.of(context)!.
colors))),
        const SizedBox(
          width: Measures.small,
        ),
        Expanded(
            child: SelectorDropDown<String>(
          onSelect: onSizeSelected,
          initialSelection: selectedSizeIndex,
          itemBuilder: sizesDropdowns,
          label:  Text(Translations.of(context)!.
sizes),
        )),
      ],
    );
  }
}
