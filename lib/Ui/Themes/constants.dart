abstract class Titles {
  static const List<String> sidebarTitles = [
    // Translations.of(context).sales,
    // Translations.of(context).orders,
    // Translations.of(context).stock,
    // Translations.of(context).records,
    // Translations.of(context).settings,
    // Translations.of(context).logout
  ];

  static const List<String> salesTableColumns = [
    // Translations.of(context).barcode,
    // Translations.of(context).productName,
    // Translations.of(context).reference,
    // Translations.of(context).sellerName,
    // Translations.of(context).buyingPrice,
    // Translations.of(context).sellingPrice
  ];

  // Stock Table
  static const List<String> stockProductTableColumns = [
    // Translations.of(context).barcode,
    // Translations.of(context).productName,
    // Translations.of(context).reference,
    // Translations.of(context).productFamily,
    // Translations.of(context).buyingPrice,
    // Translations.of(context).quantity,
  ];

  static const List<String> stockFamilliesTableColumns = [
    // Translations.of(context).productFamily,
    // Translations.of(context).reference,
  ];

  static const List<String> sellersTableColumns = [
    // Translations.of(context).sellerName,
    // Translations.of(context).phoneNumber,
  ];

  // Orders Table
  static const List<String> ordersTableColumns = [
    // Translations.of(context).date,
    // Translations.of(context).sellerName,
    // Translations.of(context).customer,
    // Translations.of(context).productName,
    // Translations.of(context).deposit,
    // Translations.of(context).remainingPayement,
    // Translations.of(context).deliveryCost
  ];

  static const List<String> orderProductsTableColumns = [
    // Translations.of(context).productName,
    // Translations.of(context).reference,
    // Translations.of(context).color,
    // Translations.of(context).size,
    // Translations.of(context).sellingPrice
  ];

  // Records Table
  static const List<String> recordsTableColumns = [
    // Translations.of(context).date,
    // Translations.of(context).type,
    // Translations.of(context).productName,
    // Translations.of(context).sellerName,
    // Translations.of(context).sellingPrice,
    // Translations.of(context).deposit,
    // Translations.of(context).remaining,
  ];

  static const List<String> productModelsHeaders = [
    // Translations.of(context).color,
    // Translations.of(context).size,
    // Translations.of(context).quantity
  ];

  static const List<String> depositsTableColumns = [
    // Translations.of(context).productName,
    // Translations.of(context).customer,
    // Translations.of(context).sellerName,
    // Translations.of(context).sellingPrice,
    // Translations.of(context).deposit,
    // Translations.of(context).remainingPayement,
  ];

  static const List<String> pruchaseInvoiceHeaders = [
    // Translations.of(context).productName,
    // Translations.of(context).quantity,
    // Translations.of(context).price,
    // Translations.of(context).total,
  ];

  static const List<String> invoiceFooterHeaders = [
    "Number",
    "Address",
    "Facebook"
  ];

  static const List<String> recordReportHeaders = [
    // Translations.of(context).type,
    // Translations.of(context).productName,
    // Translations.of(context).sellingPrice,
    // Translations.of(context).deposit,
    // Translations.of(context).remainingPayement,
  ];

  static const ordersReportHeaders = [
    // Translations.of(context).customer,
    // Translations.of(context).phoneNumber,
    // Translations.of(context).city,
    // Translations.of(context).productName,
    // Translations.of(context).sellingPrice,
    // Translations.of(context).deposit,
    // Translations.of(context).deliveryCost
  ];

  static const dailyOrdersReport = 'Daily Orders Report';
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

  static const cardWidthsmall = 200.0;
  static const cardWidthMedium = 300.0;
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

  static const invoiceLogoWidth = 100.0;

  static const invoiceLogoHeight = 100.0;

  static double quickSearchFieldHeight = 30.0;

  static double quickSearchFieldWidth = 325.0;
}

