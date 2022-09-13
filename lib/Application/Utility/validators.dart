import 'package:stock_manager/l10n/generated/translations.dart';
import 'package:stock_manager/main.dart';

abstract class ValueValidator {
  

  static String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return Translations.of(App.appContext).messageEmptyField;
    }

    if (double.tryParse(value) == null) {
      return Translations.of(App.appContext).messageInvalidNumber;
    }

    return null;
  }
}
