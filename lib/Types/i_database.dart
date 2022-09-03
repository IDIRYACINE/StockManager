

class SearchWrapper{
  final List<AttributeWrapper> _searchParameters;

  SearchWrapper(this._searchParameters);

  List<AttributeWrapper> get searchParameters => _searchParameters;
}

class LoadWrapper{
  int limit;
  int offset;

  LoadWrapper(this.limit, this.offset);
}

class AttributeWrapper{

  final Enum _attributeName;

  final String _attributeValue;

  AttributeWrapper(this._attributeName,this._attributeValue);

  String get attributeName => _attributeName.toString();
  String get attributeValue => _attributeValue;

}

enum Collections{
  records,
  orders,
  sellers,
  products,
  productsFamily,
}

enum Indexes{
  date,
  barcode,
  reference,
  status,
  phone,
}

enum ProductFields{
  name,
  reference,
  imageUrl,
  buyingPrice,
  sellingPrice,
  models,
  quantity,
  family,
  barcode,

}

enum ProductModelFields{
  color,
  size,
  quantity
}

enum RecordFields{
  timeStamp,
  date,
  product,
  productSize,
  productColor,
  seller,
  paymentType,
  buyingPrice,
  sellingPrice,
  customer,
  deposit,
  barcode,
  remainingPayement,
  reference,
  quantity
}

enum OrderFields{
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
  productSize,
  productName,
  sellingPrice,

}

enum SellerFields{
  name,
  phone,
  imageUrl
}
enum ProductFamilyFields{
  name,
  reference,
  imageUrl
}

