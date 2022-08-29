

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
  reference
}

enum ProductsFields{
  name,
  reference,
  imageUrl,
  price,
  models,
  quantity,
  family,
  barcode,

}
enum RecordsFields{
  date,
  product,
  seller,
  paymentType,
  originalPrice,
  sellingPrice
}

enum OrdersFields{
  date,
  status,
  seller,
  products,
  customerName,
  cusomerPhone,
  customerAddress,
  customerCity,
  payedDeivery,
}
enum SellersFields{
  name,
  phone,
  imageUrl
}
enum ProductsFamilyFields{
  name,
  reference,
  imageUrl
}
