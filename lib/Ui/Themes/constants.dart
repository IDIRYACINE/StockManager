
abstract class Titles {

  // Sidebar Titles
  static const String stock = 'Stock';
  static const String sales = 'Sales';
  static const String records = 'Records';
  static const String settings = 'Settings';
  static const String orders = 'Orders';

  static const List<String> sidebarTitles = [
    sales,
    orders,
    stock,
    records,
    settings,
    logout
  ];

  //Tables Headers
  static const String barcode = 'Barcode';
  static const String name = 'Name';
  static const String price = 'Price';
  static const String quantity = 'Quantity';
  static const String deposit = 'Deposit';
  static const String buyingPrice = 'Buying Price';
  static const String total = 'Total';
  static const String seller = 'Seller';
  static const String remainingPrice = 'Remaining Price';
  static const String profit = 'Profit';
  static const String lowSellPrice = 'Lowest Price';
  static const String sellingPrice = 'Selling Price';
  static const String id = 'ID';
  static const String date = 'Date';
  static const String customer = 'Customer';
  static const String totalPrice = 'Total Price';
  static const String status = 'Status';
  static const String actions = 'Actions';
  static const String city = 'City';
  static const String product = 'Product';
  static const String familyCode = 'Family Code';
  static const String familyName = 'Family Name';



  static const List<String> salesTableColumns = [
    barcode,name,quantity,deposit,buyingPrice,lowSellPrice,price,total,profit
  ];

  // Stock Table
  static const List<String> stockTableColumns = [
    barcode,name,quantity,buyingPrice,lowSellPrice,price,
  ];
  
  // Orders Table
  static const List<String> ordersTableColumns = [
    id,date,city,customer,quantity,totalPrice,status
  ];

  // Records Table
  static const List<String> recordsTableColumns = [
    id,date,customer,product,familyCode,quantity,buyingPrice,sellingPrice,profit
  ];

  static const List<String> productModelsHeaders = [
    Labels.color,Labels.size,Labels.quantity
  ];

  // Others
  static const String appName = 'Flutter Demo';
  static const String logout = 'Logout';
  static const String login = 'Login';


}


abstract class Labels{
  static const String date = 'Date';
  static const String sellerName = 'Seller';
  static const String quantity = 'Quantity';
  static const String status = 'Status';
  static const String name = 'Name';
  static const String phoneNumber = 'Phone Number';
  static const String address = 'Address';
  static const String city = 'City';
  static const String postalCode = 'Postal Code';
  static const String imageUrl = 'Image Url';
  static const String productSize = 'Product Size';
  static const String productColor = 'Product Color';
  static const String buyingPrice = 'Buying Price';
  static const String sellingPrice = 'Selling Price';
  static const String reference = 'Reference';
  static const String barcode = 'Barcode';
  static const String minSellingPrice = 'Min Selling Price';
  static const String totalQuantity = 'Total Quantity';
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
  static const String selectProductFamily= 'Select Product Family';


}


abstract class Measures {
  static const double smallBorder = 1;
  static const double small = 8;
  static const double medium = 16;
  static const double large = 24;

  static const double mediumCardHeight = 70;
}