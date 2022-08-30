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
    Labels.id,
    Labels.date,
    Labels.sellerName,
    Labels.customer,
    Labels.city,
    Labels.quantity,
    Labels.total,
    Labels.status,
    Labels.payedDelivery
  ];

  // Records Table
  static const List<String> recordsTableColumns = [
    Labels.date,
    Labels.payementType,
    Labels.productName,
    Labels.productFamily,
    Labels.buyingPrice,
    Labels.sellingPrice,
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
    Labels.buyingPrice,
    Labels.sellingPrice,
  ];
}

abstract class Labels {
  static const sellers = 'Sellers';
  static const String date = 'Date';
  static const String sellerName = 'Seller';
  static const String quantity = 'Quantity';
  static const String status = 'Status';
  static const String name = 'Name';
  static const String customerName = 'Customer Name';
  static const String phoneNumber = 'Phone Number';
  static const String address = 'Address';
  static const String city = 'City';
  static const String postalCode = 'Postal Code';
  static const String imageUrl = 'Image Url';
  static const String productSize = 'Product Size';
  static const String productColor = 'Product Color';
  static const String buyingPrice = 'Original Price';
  static const String sellingPrice = 'Selling Price';
  static const String reference = 'Reference';
  static const String barcode = 'Barcode';
  static const String minSellingPrice = 'Min Selling Price';
  static const String totalQuantity = 'Total Quantity';
  static const String remainigQuantity = 'Remainig Quantity';
  static const String models = 'Models';
  static const String categoryId = 'Category Id';
  static const String add = 'Add';
  static const String edit = 'Edit';
  static const String remove = 'Remove';
  static const String clear = 'Clear';
  static const String refresh = 'Refresh';
  static const String search = 'Search';
  static const String filter = 'Filter';
  static const String details = 'Full Details';
  static const String confirm = 'Confirm';
  static const String cancel = 'Cancel';
  static const String save = 'Save';
  static const String colors = 'Colors';
  static const String sizes = 'Sizes';
  static const String color = 'Color';
  static const String size = 'Size';
  static const String entityNumber = 'N';
  static const String selectProductFamily = 'Select Product Family';
  static const String productName = 'Product';
  static const String price = "Price";
  static const String lowSellPrice = "Lowest Price";
  static const String priceHelp = "Help";
  static const String deposit = "Deposit";
  static const String remainingPayement = "Remaining Payement";
  static const String total = "Total";
  static const String payedDelivery = "PDelivery";
  static const String customer = 'Customer';
  static const String id = "Id";
  static const String productFamily = 'Family';
  static const String payementType = 'Payement Type';
  static const String stockTypes = 'Select Stock';
  static const String searchType = 'Search Type';
  static const String startDate = 'Start Date';
  static const String endDate = 'End Date';
  static const update = 'Update';


  // Sidebar Titles
  static const String stock = 'Stock';
  static const String sales = 'Sales';
  static const String records = 'Records';
  static const String settings = 'Settings';
  static const String orders = 'Orders';
  static const String logout = 'Logout';

  // Others
  static const String appName = 'Flutter Demo';
  static const String login = 'Login';
  static const String username = 'Username';
  static const String password = 'Password';
  static const String loading = 'Loading';

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
  
  static const largePadding = 20.0;

  static const double mediumCardHeight = 70;

  static const dialogWidthExtraLarge = 700.0;
  static const dialogWidthLarge = 500.0;
  static const dialogWidthMedium = 300.0;
  static const dialogWidthSmall = 200.0;

  static const maxWidth = 1200.0;
  static const maxHeight = 800.0;
}

abstract class Messages{
  static const String deleteElement = 'Delete element ?';
  static const clearAll = 'Clear all ?';

}
