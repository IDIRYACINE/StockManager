
enum EventTypes{
  navigation,
  sales,
  services,
  exceptions,
  inventory,
}

enum SubEventType{
  purchase,
  deposit,
  order,
  product,
  category,
}

enum EEventDataKeys{
  instance,
  instanceCollection,
  operation,
}

enum Events{
 
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

enum DepositEvents{
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

enum OrderEvents{

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

enum EOperationStatus{
  success,
  error,
}

enum EOperations{
  printPurchase,
}