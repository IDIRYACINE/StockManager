import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Application/Editors/city_mode.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class CityForm extends StatelessWidget {
  const CityForm(
      {Key? key, required this.city, required this.cityEditorMode})
      : super(key: key);

  final City city;
  final CityEditorMode cityEditorMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Flexible(
              child: AttributeTextField(
            initialValue: city.cityName,
            onChanged: cityEditorMode.setName,
            label: Translations.of(context)!.city,
          )),
        
        ],
      ),
    );
  }
}
