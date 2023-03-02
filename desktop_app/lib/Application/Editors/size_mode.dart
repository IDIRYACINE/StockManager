import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class SizeEditorMode<T> {
  void setName(String? name);

  void confirm(T callback);

  static SizeEditorMode<Callback<ModelSize>> createModeInstance(
      ModelSize modelSize) {
    return _ModeCreate(modelSize);
  }

  static SizeEditorMode<EditorCallback<AppJson, ModelSize>> editModeInstance(
      ModelSize modelSize) {
    return _ModeEdit(modelSize);
  }
}

class _ModeCreate implements SizeEditorMode<Callback<ModelSize>> {
  final ModelSize modelSize;

  _ModeCreate(this.modelSize);

  @override
  void setName(String? name) {
    if (name != null) {
      modelSize.size = name;
    }
  }

  @override
  void confirm(Callback<ModelSize> callback) {
    callback(modelSize);
  }
}

class _ModeEdit implements SizeEditorMode<EditorCallback<AppJson, ModelSize>> {
  final ModelSize modelSize;

  _ModeEdit(this.modelSize);

  Map<ModelSizeFields, dynamic> updatedFields = {};

  @override
  void setName(String? name) {
    if (name != null) {
      modelSize.size = name;
      updatedFields[ModelSizeFields.size] = name;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, ModelSize> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, modelSize);
  }
}
