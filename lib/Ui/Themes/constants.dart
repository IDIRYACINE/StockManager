abstract class Titles {
  static const List<String> sidebarTitles = [
    Labels.sales,
    Labels.orders,
    Labels.stock,
    Labels.records,
    Labels.settings,
    Labels.logout
  ];

  static const List<String> salesTableColumns = [
    Labels.barcode,
    Labels.productName,
    Labels.reference,
    Labels.sellerName,
    Labels.buyingPrice,
    Labels.sellingPrice
  ];

  // Stock Table
  static const List<String> stockProductTableColumns = [
    Labels.barcode,
    Labels.productName,
    Labels.reference,
    Labels.productFamily,
    Labels.buyingPrice,
    Labels.quantity,
  ];

  static const List<String> stockFamilliesTableColumns = [
    Labels.productFamily,
    Labels.reference,
  ];

  static const List<String> sellersTableColumns = [
    Labels.sellerName,
    Labels.phoneNumber,
  ];

  // Orders Table
  static const List<String> ordersTableColumns = [
    Labels.date,
    Labels.sellerName,
    Labels.customer,
    Labels.deposit,
    Labels.remainingPayement,
    Labels.deliveryCost
  ];

  static const List<String> orderProductsTableColumns = [
    Labels.productName,
    Labels.reference,
    Labels.color,
    Labels.size,
    Labels.sellingPrice
  ];

  // Records Table
  static const List<String> recordsTableColumns = [
    Labels.date,
    Labels.payementType,
    Labels.productName,
    Labels.productFamily,
    Labels.sellingPrice,
    Labels.price,
    Labels.remainingPayement,
  ];

  static const List<String> productModelsHeaders = [
    Labels.color,
    Labels.size,
    Labels.quantity
  ];

  static const List<String> depositsTableColumns = [
    Labels.productName,
    Labels.customer,
    Labels.sellerName,
    Labels.deposit,
    Labels.remainingPayement,
    Labels.sellingPrice,
  ];

  static const List<String> pruchaseInvoiceHeaders = [
    Labels.productName,
    Labels.quantity,
    Labels.price,
    Labels.total,
  ];

  static const List<String> invoiceFooterHeaders = [
    "Number",
    "Address",
    "Facebook"
  ];

  static const List<String> recordReportHeaders = [
    Labels.payementType,
    Labels.productName,
    Labels.buyingPrice,
    Labels.sellingPrice,
    Labels.deposit,
    Labels.remainingPayement,
  ];

  static const ordersReportHeaders = [
    Labels.customer,
    Labels.city,
    Labels.productName,
    Labels.color,
    Labels.size,
    Labels.sellingPrice,
    Labels.deposit,
  ];

  static const dailyOrdersReport = 'Daily Orders Report';
}

abstract class Labels {
  static const sellers = 'Sellers';
  static const date = 'Date';
  static const sellerName = 'Seller';
  static const quantity = 'Quantity';
  static const status = 'Status';
  static const name = 'Name';
  static const customerName = 'Customer Name';
  static const phoneNumber = 'Phone Number';
  static const address = 'Address';
  static const city = 'City';
  static const postalCode = 'Postal Code';
  static const imageUrl = 'Image Url';
  static const productSize = 'Product Size';
  static const productColor = 'Product Color';
  static const buyingPrice = 'Original Price';
  static const sellingPrice = 'Selling Price';
  static const reference = 'Reference';
  static const barcode = 'Barcode';
  static const minSellingPrice = 'Min Selling Price';
  static const totalQuantity = 'Total Quantity';
  static const remainigQuantity = 'Remainig Quantity';
  static const models = 'Models';
  static const categoryId = 'Category Id';
  static const add = 'Add';
  static const edit = 'Edit';
  static const remove = 'Remove';
  static const clear = 'Clear';
  static const refresh = 'Refresh';
  static const search = 'Search';
  static const filter = 'Filter';
  static const details = 'Full Details';
  static const confirm = 'Confirm';
  static const cancel = 'Cancel';
  static const save = 'Save';
  static const colors = 'Colors';
  static const sizes = 'Sizes';
  static const color = 'Color';
  static const size = 'Size';
  static const entityNumber = 'N';
  static const selectProductFamily = 'Select Product Family';
  static const productName = 'Product';
  static const price = "Price";
  static const lowSellPrice = "Lowest Price";
  static const priceHelp = "Help";
  static const deposit = "Deposit";
  static const remainingPayement = "Remaining Payement";
  static const total = "Total";
  static const payedDelivery = "PDelivery";
  static const customer = 'Customer';
  static const id = "Id";
  static const productFamily = 'Family';
  static const payementType = 'Payement Type';
  static const stockTypes = 'Select Stock';
  static const searchType = 'Search Type';
  static const startDate = 'Start Date';
  static const endDate = 'End Date';
  static const update = 'Update';
  static const deliveryCost = 'Delivery Cost';
  static const error = 'Error';

  // Sidebar Titles
  static const stock = 'Stock';
  static const sales = 'Sales';
  static const records = 'Records';
  static const settings = 'Settings';
  static const orders = 'Orders';
  static const logout = 'Logout';

  // Others
  static const appName = 'Flutter Demo';
  static const login = 'Login';
  static const username = 'Username';
  static const password = 'Password';
  static const loading = 'Loading';
  static const print = 'Print';
  static String netProfit = 'Net Profit';
  static String profit = 'Profit';
  static const payed = 'Payed';
  static const totalDeposit = 'Total Deposit';
  static const topSellers = 'Sellers';
  static const topProducts = 'Top Products';

  static const addSize = 'Add Size';

  static const shopName = 'Marwa Boutique';

  static const dailySalesReport = 'Daily Sales Report';
}

abstract class Measures {
  static const double smallBorder = 1;

  static const double tiny = 2;
  static const double extraSmall = 4;
  static const double small = 8;
  static const double medium = 16;
  static const double large = 24;

  static const buttonWidthMeduim = 200;
  static const buttonWidthLarge = 300;
  static const buttonHeightSmall = 40;

  static const cardWidthsmall = 200;
  static const cardWidthMedium = 300;
  static const cardWidthLarge = 500.0;

  static const paddingLarge = 20.0;
  static const paddingNormal = 8.0;

  static const double mediumCardHeight = 70;

  static const dialogWidthExtraLarge = 700.0;
  static const dialogWidthLarge = 500.0;
  static const dialogWidthMedium = 300.0;
  static const dialogWidthSmall = 200.0;

  static const maxWidth = 1200.0;
  static const maxHeight = 800.0;

  static const sidebarButtonWidth = 300.0;
  static const sidebarButtonHeight = 50.0;

  static const sidebarButtonPadding = 10.0;

  static const contextMenuYoffset = 10.0;
  static const contextMenuXoffset = 10.0;
  static const contextMenuWidth = 200.0;
  static const contextMenuHeight = 200.0;

  static const recordsMaxRowsPrint = 19;

  static const h1TextSize = 30.0;
  static const h2TextSize = 20.0;
  static const h3TextSize = 16.0;
  static const h4TextSize = 14.0;
  static const h5TextSize = 12.0;
  static const h6TextSize = 10.0;
}

abstract class Messages {
  static const deleteElement = 'Delete element ?';
  static const clearAll = 'Clear all ?';
  static const connectionFailed = 'Connection Failed';
  static const faultyAuthentication = 'Username or password is incorrect';
  static const payementType = 'Select Payement Type';
}
