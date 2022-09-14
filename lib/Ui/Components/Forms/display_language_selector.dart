import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DisplayLanguageSelectorForm extends StatelessWidget {
  const DisplayLanguageSelectorForm({Key? key, required this.onConfirm})
      : super(key: key);

  final Callback<Locale> onConfirm;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<Locale> selectedLocale =
        ValueNotifier(Constants.supportedLocales[0]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DisplayLanguageSelector(
          selectedLanguage: (selectedLocale),
        ),
         const SizedBox(
          width: Measures.large,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultButton(
              label: Translations.of(context)!.cancel,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DefaultButton(
              label: Translations.of(context)!.confirm,
              onPressed: () {
                onConfirm(selectedLocale.value);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class DisplayLanguageSelector extends StatelessWidget {
  const DisplayLanguageSelector({
    Key? key,
    required this.selectedLanguage,
  }) : super(key: key);

  final ValueNotifier<Locale> selectedLanguage;

  DropdownMenuItem<Locale> localeDropdownAdapter(Locale locale) {
    return DropdownMenuItem<Locale>(
      value: locale,
      child: Text(locale.languageCode),
    );
  }

  List<DropdownMenuItem<Locale>>? buildDropdown(List<Locale> languages) {
    List<DropdownMenuItem<Locale>>? items = [];
    for (Locale lang in languages) {
      items.add(localeDropdownAdapter(lang));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Translations.of(context)!.selectLanguage,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          width: Measures.medium,
        ),
        Expanded(
          child: SelectorDropDown<Locale>(
              items: buildDropdown(Constants.supportedLocales),
              onSelect: (value) => selectedLanguage.value = value,
              initialSelection: selectedLanguage),
        )
      ],
    );
  }
}
