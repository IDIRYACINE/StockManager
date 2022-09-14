import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DisplayLanguageSelector extends StatelessWidget {
  const DisplayLanguageSelector({Key? key, required this.onConfirm})
      : super(key: key);

  final Callback<String> onConfirm;

  List<DropdownMenuItem<String>>? buildDropdown(List<String> languages) {
    List<DropdownMenuItem<String>>? items = [];
    for (String lang in languages) {
      items.add(DropdownAdapters.stringDropDownMenuItemAdapter(lang));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> languages = ['English', 'French', 'Arabic'];
    ValueNotifier<String> selectedLanguage = ValueNotifier(languages[0]);

    return Row(
      children: [
        Text(
          "Select display language",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          width: Measures.medium,
        ),
        SelectorDropDown<String>(
            items: buildDropdown(languages),
            onSelect: (value) => selectedLanguage.value = value,
            initialSelection: selectedLanguage)
      ],
    );
  }
}
