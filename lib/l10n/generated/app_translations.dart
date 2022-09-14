
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_translations_ar.dart';
import 'app_translations_en.dart';
import 'app_translations_fr.dart';

/// Callers can lookup localized strings with an instance of Translations returned
/// by `Translations.of(context)`.
///
/// Applications need to include `Translations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/app_translations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Translations.localizationsDelegates,
///   supportedLocales: Translations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Translations.supportedLocales
/// property.
abstract class Translations {
  Translations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Translations? of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  static const LocalizationsDelegate<Translations> delegate = _TranslationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Marwa boutique'**
  String get appName;

  /// No description provided for @sellers.
  ///
  /// In en, this message translates to:
  /// **'Sellers'**
  String get sellers;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @sellerName.
  ///
  /// In en, this message translates to:
  /// **'Seller'**
  String get sellerName;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @customerName.
  ///
  /// In en, this message translates to:
  /// **'Customer Name'**
  String get customerName;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @postalCode.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get postalCode;

  /// No description provided for @imageUrl.
  ///
  /// In en, this message translates to:
  /// **'Image Url'**
  String get imageUrl;

  /// No description provided for @productSize.
  ///
  /// In en, this message translates to:
  /// **'Product Size'**
  String get productSize;

  /// No description provided for @productColor.
  ///
  /// In en, this message translates to:
  /// **'Product Color'**
  String get productColor;

  /// No description provided for @buyingPrice.
  ///
  /// In en, this message translates to:
  /// **'Buying Price'**
  String get buyingPrice;

  /// No description provided for @sellingPrice.
  ///
  /// In en, this message translates to:
  /// **'Selling Price'**
  String get sellingPrice;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get reference;

  /// No description provided for @barcode.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get barcode;

  /// No description provided for @minSellingPrice.
  ///
  /// In en, this message translates to:
  /// **'Min Selling Price'**
  String get minSellingPrice;

  /// No description provided for @totalQuantity.
  ///
  /// In en, this message translates to:
  /// **'Total Quantity'**
  String get totalQuantity;

  /// No description provided for @remainigQuantity.
  ///
  /// In en, this message translates to:
  /// **'Remainig Quantity'**
  String get remainigQuantity;

  /// No description provided for @models.
  ///
  /// In en, this message translates to:
  /// **'Models'**
  String get models;

  /// No description provided for @categoryId.
  ///
  /// In en, this message translates to:
  /// **'Category Id'**
  String get categoryId;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Full Details'**
  String get details;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @colors.
  ///
  /// In en, this message translates to:
  /// **'Colors'**
  String get colors;

  /// No description provided for @sizes.
  ///
  /// In en, this message translates to:
  /// **'Sizes'**
  String get sizes;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @entityNumber.
  ///
  /// In en, this message translates to:
  /// **'N'**
  String get entityNumber;

  /// No description provided for @selectProductFamily.
  ///
  /// In en, this message translates to:
  /// **'Select Product Family'**
  String get selectProductFamily;

  /// No description provided for @productName.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get productName;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @lowSellPrice.
  ///
  /// In en, this message translates to:
  /// **'Lowest Price'**
  String get lowSellPrice;

  /// No description provided for @priceHelp.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get priceHelp;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @remainingPayement.
  ///
  /// In en, this message translates to:
  /// **'Remaining Payement'**
  String get remainingPayement;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @payedDelivery.
  ///
  /// In en, this message translates to:
  /// **'PDelivery'**
  String get payedDelivery;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'Id'**
  String get id;

  /// No description provided for @productFamily.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get productFamily;

  /// No description provided for @payementType.
  ///
  /// In en, this message translates to:
  /// **'Payement Type'**
  String get payementType;

  /// No description provided for @stockTypes.
  ///
  /// In en, this message translates to:
  /// **'Select Stock'**
  String get stockTypes;

  /// No description provided for @searchType.
  ///
  /// In en, this message translates to:
  /// **'Search Type'**
  String get searchType;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @deliveryCost.
  ///
  /// In en, this message translates to:
  /// **'Delivery Cost'**
  String get deliveryCost;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @stock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get stock;

  /// No description provided for @sales.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get sales;

  /// No description provided for @records.
  ///
  /// In en, this message translates to:
  /// **'Records'**
  String get records;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// No description provided for @netProfit.
  ///
  /// In en, this message translates to:
  /// **'Net Profit'**
  String get netProfit;

  /// No description provided for @profit.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get profit;

  /// No description provided for @payed.
  ///
  /// In en, this message translates to:
  /// **'Payed'**
  String get payed;

  /// No description provided for @totalDeposit.
  ///
  /// In en, this message translates to:
  /// **'Total Deposit'**
  String get totalDeposit;

  /// No description provided for @topSellers.
  ///
  /// In en, this message translates to:
  /// **'Sellers'**
  String get topSellers;

  /// No description provided for @topProducts.
  ///
  /// In en, this message translates to:
  /// **'Top Products'**
  String get topProducts;

  /// No description provided for @addSize.
  ///
  /// In en, this message translates to:
  /// **'Add Size'**
  String get addSize;

  /// No description provided for @shopName.
  ///
  /// In en, this message translates to:
  /// **'Marwa Boutique'**
  String get shopName;

  /// No description provided for @dailySalesReport.
  ///
  /// In en, this message translates to:
  /// **'Daily Sales Report'**
  String get dailySalesReport;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @displayLanguage.
  ///
  /// In en, this message translates to:
  /// **'Display Language'**
  String get displayLanguage;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @invoiceId.
  ///
  /// In en, this message translates to:
  /// **'Invoice Id'**
  String get invoiceId;

  /// No description provided for @addOrder.
  ///
  /// In en, this message translates to:
  /// **'Add Order'**
  String get addOrder;

  /// No description provided for @quickSearch.
  ///
  /// In en, this message translates to:
  /// **'Quick Search'**
  String get quickSearch;

  /// No description provided for @addDeposit.
  ///
  /// In en, this message translates to:
  /// **'Add Deposit'**
  String get addDeposit;

  /// No description provided for @addSeller.
  ///
  /// In en, this message translates to:
  /// **'Add Seller'**
  String get addSeller;

  /// No description provided for @addModel.
  ///
  /// In en, this message translates to:
  /// **'Add Model'**
  String get addModel;

  /// No description provided for @addedProduct.
  ///
  /// In en, this message translates to:
  /// **'Added Product'**
  String get addedProduct;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @descriptionDisplayLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change the display language of the app'**
  String get descriptionDisplayLanguage;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @developerContact.
  ///
  /// In en, this message translates to:
  /// **'Developer Contact'**
  String get developerContact;

  /// No description provided for @messageDeleteElement.
  ///
  /// In en, this message translates to:
  /// **'Delete element ?'**
  String get messageDeleteElement;

  /// No description provided for @messageClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all ?'**
  String get messageClearAll;

  /// No description provided for @messageConnectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Connection Failed'**
  String get messageConnectionFailed;

  /// No description provided for @messageFaultyAuthentication.
  ///
  /// In en, this message translates to:
  /// **'Username or password is incorrect'**
  String get messageFaultyAuthentication;

  /// No description provided for @messageEmptyField.
  ///
  /// In en, this message translates to:
  /// **'Field cannot be empty'**
  String get messageEmptyField;

  /// No description provided for @messageInvalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid Number'**
  String get messageInvalidNumber;

  /// No description provided for @descriptionManageSellers.
  ///
  /// In en, this message translates to:
  /// **'Manage autherised sellers'**
  String get descriptionManageSellers;

  /// No description provided for @descriptionDeveloperContact.
  ///
  /// In en, this message translates to:
  /// **'The developer contact informations '**
  String get descriptionDeveloperContact;
}

class _TranslationsDelegate extends LocalizationsDelegate<Translations> {
  const _TranslationsDelegate();

  @override
  Future<Translations> load(Locale locale) {
    return SynchronousFuture<Translations>(lookupTranslations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_TranslationsDelegate old) => false;
}

Translations lookupTranslations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return TranslationsAr();
    case 'en': return TranslationsEn();
    case 'fr': return TranslationsFr();
  }

  throw FlutterError(
    'Translations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
