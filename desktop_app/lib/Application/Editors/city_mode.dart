import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class CityEditorMode<T> {
  void setName(String? name);

  void confirm(T callback);

  static CityEditorMode<Callback<City>> createModeInstance(
      City city) {
    return _ModeCreate(city);
  }

  static CityEditorMode<EditorCallback<AppJson, City>> editModeInstance(
      City city) {
    return _ModeEdit(city);
  }
}

class _ModeCreate implements CityEditorMode<Callback<City>> {
  final City city;

  _ModeCreate(this.city);

  @override
  void setName(String? name) {
    if (name != null) {
      city.cityName = name;
    }
  }

  @override
  void confirm(Callback<City> callback) {
    callback(city);
  }
}

class _ModeEdit implements CityEditorMode<EditorCallback<AppJson, City>> {
  final City city;

  _ModeEdit(this.city);

  Map<ModelSizeFields, dynamic> updatedFields = {};

  @override
  void setName(String? name) {
    if (name != null) {
      city.cityName = name;
      updatedFields[ModelSizeFields.size] = name;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, City> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, city);
  }
}
