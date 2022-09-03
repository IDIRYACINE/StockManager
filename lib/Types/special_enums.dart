
enum OrderStatus{
  receive,
  confirmed,
  shipped,
  cancel,
  reject,
  payed,
}

enum PaymentTypes{
  deposit,
  payement
}

enum StockTypes{
  products,
  famillies
}

enum SearchType{
  equals,
  greaterThan,
  lessThan,
  greaterThanEquals,
  lessThanEquals,
  
}

enum SearchWidgetType{
  textField,
  datePicker
}

enum AppServices{
  database,
}

enum DatabaseEvent{
  insertProductFamily,
  insertProduct,
  insertPurchaseRecord,
  insertSeller,
  insertOrder,
  updateOrder,
  updateProductFamily,
  updateProduct,
  updatePurchaseRecord,
  updateSeller,
  deleteProductFamily,
  deleteOrder,
  deleteProduct,
  deletePurchaseRecord,
  deleteSeller,
  connect,
  disconnect,
  loadOrders,
  loadProductFamillies,
  loadProducts,
  loadSellers,
  loadDayPurchaseRecords,
  loadPurchaseRecords,
  searchOrders,
  searchProduct,
  searchPurchaseRecord,
  searchProductFamily,
}

enum ServiceMessageFields{
  service,
  event,
  data,
  messageId,
}

enum ServiceResponseFields{
  status,
  data,
}

enum OperationStatus{
  success,
  failure,
  error,
}

enum ServicesData {
  databaseSelector,
  updatedValues,
  instance,
  identifier,
  password
  
}

enum ContextMenuOperation{
  edit,
  remove,
}