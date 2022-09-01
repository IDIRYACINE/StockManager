
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class ProductEditorMode<T> {
  void setBarcode(String? barcode);

  void setName(String? name);

  void setReference(String? reference);

  void setProductFamily(String productFamily);
  void setBuyingPrice(String? buyingPrice);

  void setSellingPrice(String? sellingPrice);

  void setImage(String? imageUrl);

  void confirm(T confirmCallback);

  static ProductEditorMode<Callback<Product>> createModeInstance(Product product) {
    return _ModeCreate(product);
  }

  static ProductEditorMode<EditorCallback<AppJson, Product>> editModeInstance(
      Product product) {
    return _ModeEdit(product);
  }
}

class _ModeEdit implements ProductEditorMode<EditorCallback<AppJson,Product>> {
  _ModeEdit(this.product);

  final Product product;

  Map<ProductFields, dynamic> updatedField = {};

  @override
  void setBarcode(String? barcode) {
    if (barcode != null) {
      product.barcode = int.parse(barcode);
      updatedField[ProductFields.barcode] = product.barcode;
    }
  }

  @override
  void setName(String? name) {
    if (name != null) {
      product.name = name;
      updatedField[ProductFields.name] = name;
    }
  }

  @override
  void setReference(String? reference) {
    if (reference != null) {
      product.reference = reference;
      updatedField[ProductFields.reference] = reference;
    }
  }

  @override
  void setProductFamily(String productFamily) {
    product.productFamily = productFamily;
    updatedField[ProductFields.family] = productFamily;
  }

  @override
  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null) {
      product.originalPrice = double.parse(buyingPrice);
      updatedField[ProductFields.buyingPrice] = product.originalPrice;
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      product.sellingPrice = double.parse(sellingPrice);
      updatedField[ProductFields.sellingPrice] = product.sellingPrice;
    }
  }

  @override
  void setImage(String? imageUrl) {
    if (imageUrl != null) {
      product.imageUrl = imageUrl;
      updatedField[ProductFields.imageUrl] = product.imageUrl;
    }
  }

  @override
  void confirm(EditorCallback<AppJson,Product> confirmCallback) {
    final ModifierBuilder queryBuilder = ModifierBuilder();

    updatedField.forEach((key, value) {
      queryBuilder.set(key.name, value);
    });

    confirmCallback(queryBuilder.map,product);
  }
}

class _ModeCreate implements ProductEditorMode<Callback<Product>> {
  _ModeCreate(this.product);

  final Product product;

  @override
  void setBarcode(String? barcode) {
    if (barcode != null) {
      product.barcode = int.parse(barcode);
    }
  }

  @override
  void setName(String? name) {
    if (name != null) {
      product.name = name;
    }
  }

  @override
  void setReference(String? reference) {
    if (reference != null) {
      product.reference = reference;
    }
  }

  @override
  void setProductFamily(String productFamily) {
    product.productFamily = productFamily;
  }

  @override
  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null) {
      product.originalPrice = double.parse(buyingPrice);
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      product.sellingPrice = double.parse(sellingPrice);
    }
  }

  @override
  void setImage(String? imageUrl) {
    if (imageUrl != null) {
      product.imageUrl = imageUrl;
    }
  }

  @override
  void confirm(Callback<Product> confirmCallback) {
    confirmCallback(product);
  }
}
