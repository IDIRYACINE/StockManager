class ProductModel {
  ProductModel({
    required this.id,
    required this.color,
    required this.sizes,
  });

  String id;
  String color;
  Map<String, ModelSize> sizes;

  static defaultInstance(String id) {
    return ProductModel(
      id: id,
      color: "Default",
      sizes: {},
    );
  }
}

class ModelSize {
  String size;
  int quantity;

  ModelSize(this.size, this.quantity);

  static ModelSize defaultInstance() {
    return ModelSize("Default", 1);
  }
}

class Product {
  Product(
      {required this.barcode,
      required this.name,
      required this.productFamily,
      required this.buyingPrice,
      required this.sellingPrice,
      required this.totalQuantity,
      required this.models,
      required this.familyReference,
      required this.imageUrl});

  int barcode;
  String name;
  int familyReference;
  double buyingPrice;
  String? imageUrl;
  double sellingPrice;
  int totalQuantity;
  Map<String, ProductModel> models;
  String productFamily;

  static Product defaultInstance() {
    return Product(
      barcode: 0,
      name: '',
      productFamily: '',
      buyingPrice: 0.0,
      sellingPrice: 0.0,
      totalQuantity: 0,
      models: {},
      imageUrl: null,
      familyReference: 0,
    );
  }
}

class ProductFamily {
  String name;
  int reference;
  String? imageUrl;

  ProductFamily({required this.name, required this.reference, this.imageUrl});

  ProductFamily copyWith({
    String? name,
    int? reference,
    String? imageUrl,
  }) {
    return ProductFamily(
      name: name ?? this.name,
      reference: reference ?? this.reference,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}

enum _ProductFields {
  barcode,
  name,
  productFamily,
  buyingPrice,
  sellingPrice,
  reference,
  totalQuantity,
  models,
  imageUrl,
  familyReference,
}

enum _ProductModelFields {
  id,
  color,
  sizes,
  size,
  quantity,
}

extension _ApiProductModelFields on _ProductModelFields {
  String get name {
    switch (this) {
      case _ProductModelFields.id:
        return "id";
      case _ProductModelFields.color:
        return "color";
      case _ProductModelFields.sizes:
        return "sizes";
      case _ProductModelFields.size:
        return "size";
      case _ProductModelFields.quantity:
        return "quantity";
    }
  }
}



extension _ApiProductFields on _ProductFields {
  String get name {
    switch (this) {
      case _ProductFields.barcode:
        return "barcode";
      case _ProductFields.name:
        return "name";
      case _ProductFields.productFamily:
        return "family";
      case _ProductFields.buyingPrice:
        return "buyingPrice";
      case _ProductFields.sellingPrice:
        return "sellingPrice";
      case _ProductFields.reference:
        return "reference";
      case _ProductFields.totalQuantity:
        return "totalQuantity";
      case _ProductFields.models:
        return "ProductModel";
      case _ProductFields.imageUrl:
        return "imageUrl";
      case _ProductFields.familyReference:
        return "family_id";
    }
  }
}

enum _ProductFamilyFields {
  name,
  reference,
  imageUrl,
}

extension _ApiProductFamilyFields on _ProductFamilyFields {
  String get name {
    switch (this) {
      case _ProductFamilyFields.name:
        return "name";
      case _ProductFamilyFields.reference:
        return "id";
      case _ProductFamilyFields.imageUrl:
        return "imageUrl";
    }
  }
}

ProductModel _productModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    id: json[_ProductModelFields.id.name],
    color: json[_ProductModelFields.color.name],
    sizes: _sizesFromJson(json[_ProductModelFields.sizes.name]),
  );
}

Map<String,ModelSize> _sizesFromJson(Map<String, dynamic> json) {
  Map<String, ModelSize> sizes = {};
  json.forEach((key, value) {
    sizes[key] = _modelSizeFromJson(value);
  });
  return sizes;
}



ModelSize _modelSizeFromJson(Map<String, dynamic> json) {
  return ModelSize(
    json[_ProductModelFields.size.name],
    int.tryParse(json[_ProductModelFields.quantity.name]) ?? -1,
  );
}


Map<String,ProductModel> _modelsFromJsonList(List<Object?> json) {
  Map<String, ProductModel> models = {};
  
  for (var value in json) {
    value = value as Map<String, dynamic>;
    final key = value[_ProductModelFields.id.name];
    models[key] = _productModelFromJson(value);
  }
  return models;
}

Product productFromJson(Map<String, dynamic> json) {
  return Product(
    barcode: json[_ProductFields.reference.name] ?? -1,
    name: json[_ProductFields.name.name],
    productFamily: json[_ProductFields.productFamily.name][_ProductFields.name.name],
    buyingPrice: json[_ProductFields.buyingPrice.name].toDouble() ?? -1.0,
    sellingPrice: json[_ProductFields.sellingPrice.name].toDouble() ?? -1.0,
    totalQuantity: json[_ProductFields.totalQuantity.name] ?? -1,
    models: _modelsFromJsonList(json[_ProductFields.models.name]),
    imageUrl: json[_ProductFields.imageUrl.name],
    familyReference: json[_ProductFields.familyReference.name],
  );
}


List<Product> productsFromJsonList(List<dynamic> json) => json.map((e) => productFromJson(e)).toList();

ProductFamily productFamilyFromJson(Map<String, dynamic> json) {
  return ProductFamily(
    name: json[_ProductFamilyFields.name.name] ,
    reference: json[_ProductFamilyFields.reference.name],
    imageUrl: json[_ProductFamilyFields.imageUrl.name],
  );
}

List<ProductFamily> productFamiliesFromJsonList(List<dynamic> json) => json.map((e) => productFamilyFromJson(e)).toList();