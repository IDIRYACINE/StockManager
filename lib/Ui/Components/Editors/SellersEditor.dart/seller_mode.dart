import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class SellerEditorMode<T> {
  void setImage(String? image);

  void setName(String? name);

  void setPhone(String? phone);

  void confirm(T callback);

  static SellerEditorMode<Callback<Seller>> createModeInstance(Seller seller) {
    return _ModeCreate(seller);
  }

  static SellerEditorMode<EditorCallback<AppJson, Seller>> editModeInstance(
      Seller seller) {
    return _ModeEdit(seller);
  }
}

class _ModeCreate implements SellerEditorMode<Callback<Seller>> {
  final Seller seller;

  _ModeCreate(this.seller);

  @override
  void setName(String? name) {
    if (name != null) {
      seller.name = name;
    }
  }

  @override
  void setImage(String? image) {
    if (image != null) {
      seller.imageUrl = image;
    }
  }

  @override
  void setPhone(String? phone) {
    if (phone != null) {
      seller.phone = int.parse(phone);
    }
  }

  @override
  void confirm(Callback<Seller> callback) {
    callback(seller);
  }
}

class _ModeEdit implements SellerEditorMode<EditorCallback<AppJson, Seller>> {
  final Seller seller;

  _ModeEdit(this.seller);

  Map<SellerFields, dynamic> updatedFields = {};

  @override
  void setName(String? name) {
    if (name != null) {
      seller.name = name;
      updatedFields[SellerFields.name] = name;
    }
  }

  @override
  void setImage(String? image) {
    if (image != null) {
      seller.imageUrl = image;
      updatedFields[SellerFields.imageUrl] = image;
    }
  }

  @override
  void setPhone(String? phone) {
    if (phone != null) {
      seller.phone = int.parse(phone);
      updatedFields[SellerFields.phone] = phone;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, Seller> callback) {
    final ModifierBuilder modifierBuilder = ModifierBuilder();

    updatedFields.forEach((key, value) {
      modifierBuilder.set(key.name, value);
    });

    callback(modifierBuilder.map, seller);
  }
}
