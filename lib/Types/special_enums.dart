
enum PaymentTypes{
  payement,
  deposit,
  remaining,
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
  insertRemainingRecord,
  insertProductFamily,
  insertProduct,
  insertPurchaseRecord,
  insertSeller,
  insertOrder,
  insertOrderProduct,
  updateOrder,
  updateProductFamily,
  updateProduct,
  updateProductBatch,
  updatePurchaseRecord,
  updateSeller,
  deleteProductFamily,
  deleteOrder,
  deleteOrderProduct,
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
  instanceList,
  identifier,
  password
  
}

enum ContextMenuOperation{
  edit,
  remove,
  completePayment,
}

enum StatsType{
  topStates,
  topProducts,
  topSellers,
}

enum StatsVisibility{
  daily,
  weekly,
  monthly,
  yearly,
}