import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Types/i_database.dart';

abstract class ProductEditorMode<T> {
  void setBarcode(String? barcode);

  void setName(String? name);

  void setReference(String? reference);

  void setProductFamily(String productFamily,String familyReference);

  void setBuyingPrice(String? buyingPrice);

  void setSellingPrice(String? sellingPrice);

  void setImage(String? imageUrl);

  void addModel();

  void removeModel(String id);

  void addSize(String modelIndex);

  void removeSize(String modelIndex, String index);

  void setModelColor(String color, String index);

  void setModelSize(String size, String modelIndex, String index);

  void setModelQuantity(String quantity, String modelIndex, String index);

  void confirm(T confirmCallback);

  static ProductEditorMode<Callback<Product>> createModeInstance(
      Product product) {
    return _ModeCreate(product);
  }

  static ProductEditorMode<EditorCallback<AppJson, Product>> editModeInstance(
      Product product) {
    return _ModeEdit(product);
  }
}

class _ModeEdit implements ProductEditorMode<EditorCallback<AppJson, Product>> {
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
  void setProductFamily(String productFamily,String familyReference) {
    product.productFamily = productFamily;
    product.familyReference = familyReference;
    updatedField[ProductFields.family] = productFamily;
    updatedField[ProductFields.familyReference] = familyReference;
  }

  @override
  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null) {
      product.buyingPrice = double.parse(buyingPrice);
      updatedField[ProductFields.buyingPrice] = product.buyingPrice;
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
  void addModel() {
    String id = Utility.getTimeStamp().toString();
    product.models[id] = ProductModel.defaultInstance(id);
    product.totalQuantity += 1;
    updatedField[ProductFields.models] = product.models;
    updatedField[ProductFields.quantity] = product.totalQuantity;
  }

  @override
  void removeModel(String index) {
    int modelQuantity = 0;

    product.models[index]?.sizes.forEach((key, value) {
      modelQuantity += value.quantity;
    });

    int newQuantity = product.totalQuantity - modelQuantity;
    product.totalQuantity = newQuantity < 0 ? 0 : newQuantity;
    
    product.models.remove(index);
    updatedField[ProductFields.models] = product.models;
    updatedField[ProductFields.quantity] = product.totalQuantity;
  }

  @override
  void setModelColor(String color, String index) {
    product.models[index]?.color = color;
    updatedField[ProductFields.models] = product.models;
  }

  @override
  void setModelSize(String size, String modelIndex, String index) {
    product.models[modelIndex]!.sizes[index]!.size = size;
    updatedField[ProductFields.models] = product.models;
  }

  @override
  void setModelQuantity(String quantity, String modelIndex, String index) {
    if (quantity != '') {
      int parsedQuantity = int.parse(quantity);
      int oldQuantity = product.models[modelIndex]!.sizes[index]!.quantity;

      product.totalQuantity =
          product.totalQuantity - oldQuantity + parsedQuantity;

      product.models[modelIndex]!.sizes[index]!.quantity = parsedQuantity;

      updatedField[ProductFields.quantity] = product.totalQuantity;
      updatedField[ProductFields.models] = product.models;
    }
  }

  @override
  void confirm(EditorCallback<AppJson, Product> confirmCallback) {
    final ModifierBuilder queryBuilder = ModifierBuilder();

    updatedField.forEach((key, value) {
      queryBuilder.set(key.name, value);
    });

    confirmCallback(queryBuilder.map, product);
  }

  @override
  void addSize(String modelIndex) {
    String id = Utility.getTimeStamp().toString();
    product.models[modelIndex]!.sizes[id] = ModelSize.defaultInstance();

    product.totalQuantity += 1;
    updatedField[ProductFields.models] = product.models;
    updatedField[ProductFields.quantity] = product.totalQuantity;
  }

  @override
  void removeSize(String modelIndex, String index) {
    int oldQuantity = product.models[modelIndex]!.sizes[index]!.quantity;

    product.totalQuantity = product.totalQuantity - oldQuantity;

    product.models[modelIndex]!.sizes.remove(index);

    updatedField[ProductFields.models] = product.models;
    updatedField[ProductFields.quantity] = product.totalQuantity;
  }
}

class _ModeCreate implements ProductEditorMode<Callback<Product>> {
  _ModeCreate(this.product);

  final Product product;

  @override
  void setBarcode(String? barcode) {
    if (barcode != null && barcode != '') {
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
  void setProductFamily(String productFamily,String familyReference) {
    product.productFamily = productFamily;
    product.familyReference = familyReference;
  }

  @override
  void setBuyingPrice(String? buyingPrice) {
    if (buyingPrice != null && buyingPrice != '') {
      product.buyingPrice = double.parse(buyingPrice);
    }
  }

  @override
  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null && sellingPrice != '') {
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
  void addModel() {
    String id = Utility.getTimeStamp().toString();
    product.models[id] = ProductModel.defaultInstance(id);
    product.totalQuantity += 1;
  }

  @override
  void removeModel(String index) {
    int modelQuantity = 0;
    product.models[index]!.sizes.forEach((key, value) {
      modelQuantity += value.quantity;
    });

    int newQuantity = product.totalQuantity - modelQuantity;
    product.totalQuantity = newQuantity < 0 ? 0 : newQuantity;
    
    product.models.remove(index);
  }

  @override
  void setModelColor(String color, String index) {
    product.models[index]!.color = color;
  }

  @override
  void setModelSize(String size, String modelIndex, String index) {
    product.models[modelIndex]!.sizes[index]!.size = size;
  }

  @override
  void setModelQuantity(String quantity, String modelIndex, String index) {
    if (quantity != '') {
      int parsedQuantity = int.parse(quantity);
      int oldQuantity = product.models[modelIndex]!.sizes[index]!.quantity;

      product.totalQuantity =
          product.totalQuantity - oldQuantity + parsedQuantity;
      product.models[modelIndex]!.sizes[index]!.quantity = parsedQuantity;
    }
  }

  @override
  void confirm(Callback<Product> confirmCallback) {
    confirmCallback(product);
  }

  @override
  void removeSize(String modelIndex, String index) {
    product.totalQuantity -= product.models[modelIndex]!.sizes[index]!.quantity;

    product.models[modelIndex]!.sizes.remove(index);
  }

  @override
  void addSize(String modelIndex) {
    String id = Utility.getTimeStamp().toString();
    product.models[modelIndex]!.sizes[id] = ModelSize.defaultInstance();
  }
}
