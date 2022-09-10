import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

class SelectorDropDown<T> extends StatelessWidget {
  const SelectorDropDown(
      {Key? key,
      required this.items,
      this.label,
      required this.onSelect,
      this.initialSelection})
      : super(key: key);

  final List<DropdownMenuItem<T>>? items;
  final Widget? label;
  final T? initialSelection;
  final Callback<T> onSelect;

  @override
  Widget build(BuildContext context) {
    T? selectedValue = initialSelection;

    return DropdownButton<T>(
        hint: label,
        isExpanded: true,
        value: selectedValue,
        items: items,
        onChanged: (T? value) {
          if (value != null) {
            selectedValue = value;
            onSelect(value);
          }
        });
  }
}
