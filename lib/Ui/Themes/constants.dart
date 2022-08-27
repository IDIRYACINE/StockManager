
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
  ];

  // Sales Table
  static const String barcode = 'Barcode';
  static const String name = 'Name';
  static const String price = 'Price';
  static const String quantity = 'Quantity';
  static const String deposit = 'Deposit';
  static const String buyingPrice = 'Buying Price';
  static const String total = 'Total';
  static const String profit = 'Profit';
  static const String lowSellPrice = 'Lowest Price';

  static const List<String> salesTableColumns = [
    barcode,name,quantity,deposit,buyingPrice,lowSellPrice,price,total,profit
  ];

  // Stock Table
  static const List<String> stockTableColumns = [
    barcode,name,quantity,buyingPrice,lowSellPrice,price,
  ];
  
  // Orders Table
  static const String id = 'ID';
  static const String date = 'Date';
  static const String customer = 'Customer';
  static const String totalPrice = 'Total Price';
  static const String status = 'Status';
  static const String actions = 'Actions';
  static const String city = 'City';

  static const List<String> ordersTableColumns = [
    id,date,city,customer,quantity,totalPrice,status
  ];

  // Others
  static const String appName = 'Flutter Demo';
  static const String logout = 'Logout';
  static const String login = 'Login';


}

abstract class ButtonsTitles{
  static const String add = 'Add';
  static const String edit = 'Edit';
  static const String remove = 'Remove';
  static const String clear = 'Clear';
  static const String refresh = 'Refresh';
  static const String search = 'Search';
  static const String filter = 'Filter';
  static const String details = 'Full Details';


}


abstract class Measures {
  static const double small = 8;
  static const double medium = 16;
  static const double large = 24;

  static const double mediumCardHeight = 70;
}