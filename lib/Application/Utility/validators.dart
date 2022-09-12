import 'package:stock_manager/Ui/Themes/constants.dart';

abstract class ValueValidator {
  static String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return Messages.emptyField;
    }

    if (double.tryParse(value) == null) {
      return Messages.invalidNumber;
    }

    return null;
  }
}
