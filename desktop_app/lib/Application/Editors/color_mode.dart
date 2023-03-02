
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class ColorEditorMode<T> {

  void setName(String? name);

  void confirm(T callback);

  static ColorEditorMode<Callback<ModelColor>> createModeInstance(ModelColor modelColor) {
    return _ModeCreate(modelColor);
  }

  static ColorEditorMode<EditorCallback<AppJson, ModelColor>> editModeInstance(
      ModelColor modelColor) {
    return _ModeEdit(modelColor);
  }
}

class _ModeCreate implements ColorEditorMode<Callback<ModelColor>> {
  final ModelColor modelColor;

  _ModeCreate(this.modelColor);

  @override
  void setName(String? name) {
    if (name != null) {
      modelColor.color = name;
    }
  }

  @override
  void confirm(Callback<ModelColor> callback) {
    callback(modelColor);
  }
}

class _ModeEdit implements ColorEditorMode<EditorCallback<AppJson, ModelColor>> {
  final ModelColor modelColor;

  _ModeEdit(this.modelColor);

  Map<ModelColorFields, dynamic> updatedFields = {};

  @override
  void setName(String? name) {
    if (name != null) {
      modelColor.color = name;
      updatedFields[ModelColorFields.color] = name;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, ModelColor> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, modelColor);
  }
}
