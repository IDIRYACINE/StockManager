import command_generator

# python3 /home/idir/Desktop/Projects/StockManager/desktop_app/scripts/commands_generator.py

depositCommands = [
    command_generator.DataHolder(
        "quick_search", "QuickSearchDeposit", "DepositApi", "quickSearchDeposit", "DepositService"),
    command_generator.DataHolder(
        "remove_deposit", "RemoveDeposit", "DepositApi", "removeDeposit", "DepositService"),
    command_generator.DataHolder(
        "search", "SearchDeposit", "DepositApi", "searchDeposit", "DepositService"),
]

purchaseCommands = [
    command_generator.DataHolder(
        "register_purchase", "RegisterPurchase", "PurchaseApi", "registerPurchase", "PurchaseService"),
]

stockCommands = [
    command_generator.DataHolder(
        "register_product", "RegisterProduct", "StockApi", "registerProduct", "StockService"),
    command_generator.DataHolder(
        "update_product", "UpdateProduct", "StockApi", "updateProduct", "StockService"),
    command_generator.DataHolder(
        "search_product", "SearchProduct", "StockApi", "searchProduct", "StockService"),
    command_generator.DataHolder(
        "quick_search_product", "QuickSearchProduct", "StockApi", "quickSearchProduct", "StockService"),
    command_generator.DataHolder(
        "delete_product", "DeleteProduct", "StockApi", "deleteProduct", "StockService"),
    command_generator.DataHolder(
        "add_product_model", "AddProductModel", "StockApi", "addProductModel", "StockService"),
    command_generator.DataHolder(
        "update_product_model", "UpdateProductModel", "StockApi", "updateProductModel", "StockService"),
    command_generator.DataHolder(
        "delete_product_model", "DeleteProductModel", "StockApi", "deleteProductModel", "StockService"),
    command_generator.DataHolder(
        "load_products", "LoadProducts", "StockApi", "loadProducts", "StockService"),
    command_generator.DataHolder(
        "load_product_models", "LoadProductModels", "StockApi", "loadProductModels", "StockService"),

]


sellersCommands = [
    command_generator.DataHolder(
        "load_sellers", "LoadSellers", "SellersApi", "loadSellers", "SellersService"),
    command_generator.DataHolder(
        "register_seller", "RegisterSeller", "SellersApi", "registerSeller", "SellersService"),
    command_generator.DataHolder(
        "update_seller", "UpdateSeller", "SellersApi", "updateSeller", "SellersService"),
    command_generator.DataHolder(
        "remove_seller", "RemoveSeller", "SellersApi", "removeSeller", "SellersService"),
]


def generate_commands(data):
    for d in data:
        command_generator.generate_command_file(d)

# generate_commands(depositCommands)
# generate_commands(purchaseCommands)
# generate_commands(stockCommands)
# generate_commands(sellersCommands)
