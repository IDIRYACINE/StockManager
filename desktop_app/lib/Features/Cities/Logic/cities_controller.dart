import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Features/Cities/Ui/cities_editor.dart';
import 'package:stock_manager/Features/Cities/feature.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class CitiesController {
  CitiesController(this.bloc);
  final RegionBloc bloc;

  void add(BuildContext context) {
    void onConfirm(City city) {
      bloc.add(AddCityEvent(city));

      AppNavigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      CitiesEditor(
        createCallback: onConfirm,
        confirmLabel: Translations.of(context)!.add,
        city: City.defaultInstance(),
      ),
    );
  }

  void edit(BuildContext context, City city, int index) {
    void onEdit(Map<String, dynamic> updatedField, City city) {
      final updateWrapper =
          UpdateRequestWrapper<City>(city, updatedField, index);

      bloc.add(UpdateCityEvent(updateWrapper));
      AppNavigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      CitiesEditor(
        city: city.copyWith(),
        editMode: true,
        editCallback: onEdit,
        confirmLabel: Translations.of(context)!.update,
      ),
    );
  }

  void refresh() {
    bloc.add(RefreshCities());
  }

  void remove(BuildContext context, City city) {
    void onRemove() {
      bloc.add(DeleteCityEvent(city));
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: onRemove,
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  List<String> cityToRowData(City city) {
    return [city.cityId.toString(), city.cityName];
  }

  DropdownMenuItem<City> cityDropdwonAdapter(City type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.cityName),
    );
  }
}
