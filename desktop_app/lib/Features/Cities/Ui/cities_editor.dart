import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Editors/city_mode.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'cities_form.dart';

class CitiesEditor extends StatelessWidget {
  const CitiesEditor({
    Key? key,
    this.editMode = false,
    required this.city,
    required String confirmLabel,
    this.createCallback,
    this.editCallback,
  })  : assert(
          (editMode && editCallback != null) ||
              (!editMode && createCallback != null),
          'editMode and its callback must be set together',
        ),
        super(key: key);

  final bool editMode;
  final City city;

  final Callback<City>? createCallback;
  final EditorCallback<AppJson, City>? editCallback;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final dynamic cityEditorMode = editMode
        ? CityEditorMode.editModeInstance(city)
        : CityEditorMode.createModeInstance(city);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingNormal),
      child: Form(
        key: formKey,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                  child: CityForm(
                city:city,
                cityEditorMode: cityEditorMode,
              ),),
              const SizedBox(height: Measures.small),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultButton(
                      label: Translations.of(context)!.cancel,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  DefaultButton(
                    label: Translations.of(context)!.save,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (editMode) {
                          cityEditorMode.confirm(editCallback);
                        } else {
                          cityEditorMode.confirm(createCallback);
                        }
                      }
                    },
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
