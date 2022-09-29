enum EventTypes {
  navigation,
  sales,
  services,
  exceptions,
  inventory,
  statistiques,
  record,
}

enum SubEventType {
  purchase,
  deposit,
  order,
  product,
  category,
}

enum EEventDataKeys {
  instance,
  instanceCollection,
  operation,
}

enum Events {
  load,
  search,
  quickSearch,
  printBill,
  printReport,
}

enum PurchaseEvents {
  addPurchase,
  updatePurchase,
  removePurchase,
  addPurchaseProduct,
  updatePurchaseProduct,
  removePurchaseProduct,
  printPurchaseBill,
  clearPurchase
}

enum DepositEvents {
  addDeposit,
  updateDeposit,
  removeDeposit,
  addDepositProduct,
  updateDepositProduct,
  removeDepositProduct,
  quickSearchDeposit,
  clearDeposit,
  printDepositBill,
}

enum OrderEvents {
  addOrder,
  updateOrder,
  removeOrder,
  addOrderProduct,
  updateOrderProduct,
  removeOrderProduct,
  searchOrders,
  printOrdersReport,
  printOrderBill,
}

enum StockEvents {
  addStockProduct,
  updateStockProduct,
  removeStockProduct,
  searchStockProducts,
  loadStockProducts,
  refreshStockProducts,
  addStockCategory,
  updateStockCategory,
  removeStockCategory,
  searchStockCategories,
  loadStockCategories,
  refreshStockCategories,
}

enum RecordEvents {
  addRecord,
  removeRecord,
  searchRecords,
  refreshRecords,
}

enum StatistiquesEvents {
  searchStatistiques,
  updateProductsStatistiques,
  updateSellersStatistiques,
}

enum EOperationStatus {
  success,
  error,
}

enum EOperations {
  printPurchase,
}

enum SalesEvents {
  addOrder,
  updateOrder,
  removeOrder,
  addOrderProduct,
  updateOrderProduct,
  removeOrderProduct,
  searchOrders,
  printOrdersReport,
  printOrderBill,
  addPurchase,
  updatePurchase,
  removePurchase,
  addPurchaseProduct,
  updatePurchaseProduct,
  removePurchaseProduct,
  printPurchaseBill,
  clearPurchase,
  addDeposit,
  updateDeposit,
  removeDeposit,
  addDepositProduct,
  updateDepositProduct,
  removeDepositProduct,
  quickSearchDeposit,
  clearDeposit,
  printDepositBill,
}
