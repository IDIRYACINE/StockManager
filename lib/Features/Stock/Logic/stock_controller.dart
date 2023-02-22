import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Features/Stock/i_stock.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Features/Stock/ProductEditor/product_editor.dart';
import 'package:stock_manager/Features/Stock/ProductFamilyEditor/product_family_editor.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class StockController {
  StockController() {
    _productsDelegate = _ProductsDelegate();
    _familliesDelegate = _FamilliesDelegate();
    _stockDelegate = _productsDelegate;
  }

  late IStockDelegate _stockDelegate, _productsDelegate, _familliesDelegate;

  final ValueNotifier<StockTypes> _selectedStockType =
      ValueNotifier(StockTypes.products);

  void edit(BuildContext context, dynamic element, int index) {
    _stockDelegate.edit(context, element, index);
  }

  void add(BuildContext context) {
    _stockDelegate.add(context);
  }

  void refresh(BuildContext context) {
    _stockDelegate.refresh(context);
  }

  void remove(BuildContext context, dynamic element) {
    _stockDelegate.remove(context, element);
  }

  void search(BuildContext context) {
    _stockDelegate.search(context);
  }

  static List<String> productToRowData(Product product) {
    return [
      product.name,
      product.productFamily,
      product.totalQuantity.toString(),
      product.buyingPrice.toString(),
      product.name,
    ];
  }

  static List<String> familyToRowData(ProductFamily family) {
    return [
      family.name,
      family.reference,
    ];
  }

  static DropdownMenuItem<StockTypes> stockTypesDropdownAdapter(
      StockTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  static DropdownMenuItem<ProductFamily> productFamilyDropdownAdapter(
      ProductFamily family) {
    return DropdownMenuItem(
      value: family,
      child: Text(family.name),
    );
  }

  void onSelectStockType(StockTypes value) {
    _stockDelegate =
        (value == StockTypes.products) ? _productsDelegate : _familliesDelegate;

    _selectedStockType.value = value;
  }

  ValueListenable<StockTypes> get selectedStockType => _selectedStockType;

  void quickSearch(BuildContext context, AppJson query) {
    _stockDelegate.quickSearch(context, query);
  }
}

class _ProductsDelegate implements IStockDelegate<Product> {
  _ProductsDelegate();

  

  @override
  void add(BuildContext context) {
    void onConfirm(Product product) {
      Navigator.of(context).pop();    
    }

    PopupsUtility.displayGenericPopup(
      context,
      width: Measures.containerWidthLarge,
      height: Measures.containerHeightLarge,
      ProductEditor(
        createCallback: onConfirm,
        confirmLabel: Translations.of(context)!.add,
        product: Product.defaultInstance(),
      ),
    );
  }

  @override
  void edit(BuildContext context, Product product, int index) {
    void onEdit(Map<String, dynamic> updatedField, Product product) {


      Navigator.of(context).pop();
    }

    PopupsUtility.displayGenericPopup(
      context,
      width: Measures.containerWidthLarge,
      height: Measures.containerHeightLarge,
      ProductEditor(
        product: product,
        editMode: true,
        editCallback: onEdit,
        confirmLabel: Translations.of(context)!.update,
      ),
    );
  }

  @override
  void refresh(BuildContext context) {
  }

  @override
  void remove(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: () => {},
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  @override
  void search(BuildContext context) {
    void onSearch(Map<String, dynamic> selector) {
    }

    List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
        RegisterSearchQueryBuilder onDeselect) {

      return [
        SearchFieldText<int>(
          label: Translations.of(context)!.barcode,
          identifier: ProductFields.barcode.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
          parser: (value) => int.parse(value),
          allowedSearchTypes: const [SearchType.equals],
        ),
        SearchFieldText<String>(
          label: Translations.of(context)!.reference,
          identifier: ProductFields.reference.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
          allowedSearchTypes: const [SearchType.equals],
        ),
        SearchFieldDropDown(
            label: Translations.of(context)!.selectProductFamily,
            identifier: ProductFields.family.name,
            onSelected: onSelect,
            onDeselected: onDeselect,
            values: const [])
      ];
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SearchEditor(
          searchFieldBuilder: buildSearchFields,
          searchCallback: onSearch,
        ),
      ),
    );
  }

  @override
  void quickSearch(BuildContext context, AppJson query) {
  }
}

class _FamilliesDelegate implements IStockDelegate<ProductFamily> {
  _FamilliesDelegate();

  

  @override
  void add(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: FamilyEditor(
          family: ProductFamily(name: "", reference: ""),
          createCallback: (family) => {},
          confirmLabel: Translations.of(context)!.add,
        ),
      ),
    );
  }

  @override
  void edit(BuildContext context, ProductFamily family, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: FamilyEditor(
          family: family.copyWith(),
          editMode: true,
          editCallback: (updatedValues, family) =>
              {},
          confirmLabel: Translations.of(context)!.update,
        ),
      ),
    );
  }

  @override
  void refresh(BuildContext context) {
  }

  @override
  void remove(BuildContext context, ProductFamily family) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: () => {},
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  @override
  void search(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SearchEditor(
          searchFieldBuilder: (onSelect, onDeselect) {
            return buildSearchFields(onSelect, onDeselect, context);
          },
          searchCallback: (query) => {},
        ),
      ),
    );
  }

  List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
      RegisterSearchQueryBuilder onDeselect, BuildContext context) {
    return [
      SearchFieldText(
          label: Translations.of(context)!.name,
          identifier: ProductFamilyFields.name.name,
          onSelected: onSelect,
          onDeselected: onDeselect),
      SearchFieldText(
          label: Translations.of(context)!.reference,
          identifier: ProductFamilyFields.reference.name,
          onSelected: onSelect,
          onDeselected: onDeselect),
    ];
  }

  void _showLoadingAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(content: Splash()));
  }

  @override
  void quickSearch(BuildContext context, AppJson query) {
    void onResult(List<ProductFamily> famillies) {
      Navigator.pop(context);
    }

    _showLoadingAlert(context);

    Map<ServicesData, dynamic> data = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<ProductFamily>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchProductFamily,
        data: data,
        hasCallback: true,
        callback: onResult);

    ServicesStore.instance.sendMessage(message);
  }
}
