import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class ProductFamilyEditorMode<T> {
  void setReference(String? reference);

  void setName(String? name);

  void setImage(String? imageUrl);

  void confirm(T callback);

  static ProductFamilyEditorMode<Callback<ProductFamily>> createModeInstance(
      ProductFamily family) {
    return _ModeCreate(family);
  }

  static ProductFamilyEditorMode<EditorCallback<AppJson, ProductFamily>>
      editModeInstance(ProductFamily family) {
    return _ModeEdit(family);
  }
}

class _ModeCreate implements ProductFamilyEditorMode<Callback<ProductFamily>> {
  final ProductFamily family;

  _ModeCreate(this.family);

  @override
  void setName(String? name) {
    if (name != null) {
      family.name = name;
    }
  }

  @override
  void setReference(String? reference) {
    int? ref = int.tryParse(reference!);
    if (ref != null) {
      family.reference = ref;
    }
  }

  @override
  void setImage(String? imageUrl) {
    if (imageUrl != null) {
      family.imageUrl = imageUrl;
    }
  }

  @override
  void confirm(Callback<ProductFamily> callback) {
    callback(family);
  }
}

class _ModeEdit
    implements ProductFamilyEditorMode<EditorCallback<AppJson, ProductFamily>> {
  final ProductFamily family;

  _ModeEdit(this.family);

  Map<ProductFamilyFields, dynamic> updatedFields = {};

  @override
  void setName(String? name) {
    if (name != null) {
      family.name = name;
      updatedFields[ProductFamilyFields.name] = name;
    }
  }

  @override
  void setReference(String? reference) {
    int? ref = int.tryParse(reference!);
    if (ref != null) {
      family.reference = ref;

      updatedFields[ProductFamilyFields.reference] = reference;
    }
  }

  @override
  void setImage(String? imageUrl) {
    if (imageUrl != null) {
      family.imageUrl = imageUrl;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, ProductFamily> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, family);
  }
}
