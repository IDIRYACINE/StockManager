class SearchWrapper {
  final List<AttributeWrapper> _searchParameters;

  SearchWrapper(this._searchParameters);

  List<AttributeWrapper> get searchParameters => _searchParameters;
}

class LoadWrapper {
  int limit;
  int offset;

  LoadWrapper(this.limit, this.offset);
}

class AttributeWrapper {
  final Enum _attributeName;

  final String _attributeValue;

  AttributeWrapper(this._attributeName, this._attributeValue);

  String get attributeName => _attributeName.toString();
  String get attributeValue => _attributeValue;
}

enum Collections {
  records,
  orders,
  sellers,
  products,
  productsFamily,
  statestiques,
}

enum Indexes {
  date,
  barcode,
  reference,
  status,
  phone,
}

enum ProductFields {
  name,
  reference,
  imageUrl,
  buyingPrice,
  sellingPrice,
  models,
  quantity,
  size,
  family,
  familyReference,
  barcode,
}


enum ProductModelFields { color, size, quantity, colorId, sizeId }

enum RecordFields {
  timeStamp,
  date,
  products,
  phoneNumber,
  address,
  city,
  paymentTypeIndex,
  seller,
  paymentType,
  customer,
  remainingPayement,
  reference,
  quantity,
  totalPrice,
  totalDeposit,
}

enum OrderFields {
  timeStamp,
  date,
  status,
  seller,
  products,
  customerName,
  phone,
  address,
  deliverToHome,
  remainingPayement,
  deposit,
  city,
  postalCode,
  totalPrice,
  quantity,
  deliveryCost,

  reference,
  productColor,
  productColorId,
  productSizeId,
  productSize,
  productName,
  sellingPrice,
}

enum SellerFields { code, name, phone, imageUrl }

enum ProductFamilyFields { name, reference, imageUrl }

enum RecordProductFields {
  reference,
  sellingPrice,
  name,
  color,
  size,
  buyingPrice,
  sizeId,
  colorId,
  timeStamp,
  deposit,
  remainingPayement
}

enum StatistiquesFields{
  date,
  totalProfit,
  totalNetProfit,
  totalRemaining,
  sellers,
  orders,
  products,
}

enum StatistiquesProductFields{
  profit,
  quantity,
  name,
  reference,
}

enum StatistiquesCityFields{
  name ,
  quantity,
  postalCode,
}

enum StatistiquesSellerFields{
  profit,
  quantity,
  name,
  code,
}
