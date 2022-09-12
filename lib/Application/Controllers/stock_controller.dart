import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_infrastructre.dart';
import 'package:stock_manager/Types/i_stock.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Editors/ProductEditor/product_editor.dart';
import 'package:stock_manager/Ui/Editors/ProductFamilyEditor/product_family_editor.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class StockController {
  StockController(StockLiveDataModel stockLiveDataModel) {
    _productsDelegate = _ProductsDelegate(stockLiveDataModel);
    _familliesDelegate = _FamilliesDelegate(stockLiveDataModel);
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
  _ProductsDelegate(this.stockLiveDataModel);

  final StockLiveDataModel stockLiveDataModel;

  @override
  void add(BuildContext context) {
    void _onConfirm(Product product) {
      stockLiveDataModel.addProduct(product);

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: product,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertProduct,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);

      Navigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      width: 1000,
      height: 800,
      ProductEditor(
        createCallback: _onConfirm,
        confirmLabel: Labels.add,
        product: Product.defaultInstance(),
      ),
    );
  }

  @override
  void edit(BuildContext context, Product product, int index) {
    void onEdit(Map<String, dynamic> updatedField, Product product) {
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: product.reference,
        ServicesData.updatedValues: updatedField,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.updateProduct,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
      stockLiveDataModel.updateProduct(product, index);

      Navigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      width: 1000,
      height: 800,
     ProductEditor(
          product: product,
          editMode: true,
          editCallback: onEdit,
          confirmLabel: Labels.update,
        ),
    );

  }

  @override
  void refresh(BuildContext context) {
    _showLoadingAlert(context);

    void onResult(List<Product> products) {
      Navigator.pop(context);
      stockLiveDataModel.setAllProducts(products);
    }

    ServiceMessageDataMap data = {};

    ServiceMessage message = ServiceMessage<List<Product>>(
      data: data,
      event: DatabaseEvent.loadProducts,
      service: AppServices.database,
      callback: onResult,
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
  }

  @override
  void remove(BuildContext context, Product product) {
    void onRemove() {
      stockLiveDataModel.deleteProduct(product);

      Map<ServicesData, dynamic> data = {ServicesData.instance: product};
      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.deleteProduct,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: ConfirmDialog(
                onConfirm: onRemove,
                message: Messages.deleteElement,
              ),
            ));
  }

  @override
  void search(BuildContext context) {
    void _onResult(List<Product> products) {
      stockLiveDataModel.setAllProducts(products);
      Navigator.pop(context);
    }

    void onSearch(Map<String, dynamic> selector) {
      _showLoadingAlert(context);

      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector: selector,
      };

      ServiceMessage<List<Product>> message = ServiceMessage(
          service: AppServices.database,
          event: DatabaseEvent.searchProduct,
          data: data,
          hasCallback: true,
          callback: _onResult);

      ServicesStore.instance.sendMessage(message);
    }

    List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
        RegisterSearchQueryBuilder onDeselect) {
      final familliesDropddown = stockLiveDataModel.loadedProductFamillies
          .map((e) => DropdownAdapters.productFamilyMenuItemAdapter(e))
          .toList();

      return [
        SearchFieldText<int>(
          label: Labels.barcode,
          identifier: ProductFields.barcode.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
          parser: (value) => int.parse(value),
          allowedSearchTypes: const [SearchType.equals],
        ),
        SearchFieldText<String>(
          label: Labels.reference,
          identifier: ProductFields.reference.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
          allowedSearchTypes: const [SearchType.equals],
        ),
        SearchFieldDropDown(
            label: Labels.selectProductFamily,
            identifier: ProductFields.family.name,
            onSelected: onSelect,
            onDeselected: onDeselect,
            values: familliesDropddown)
      ];
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: SearchEditor(
              searchFieldBuilder: buildSearchFields,
              searchCallback: onSearch,
            )));
  }

  void _showLoadingAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(content: Splash()));
  }

  @override
  void quickSearch(BuildContext context, AppJson query) {
    void _onResult(List<Product> products) {
      stockLiveDataModel.setAllProducts(products);
      Navigator.pop(context);
    }

    _showLoadingAlert(context);

    Map<ServicesData, dynamic> data = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<Product>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchProduct,
        data: data,
        hasCallback: true,
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
  }
}

class _FamilliesDelegate implements IStockDelegate<ProductFamily> {
  _FamilliesDelegate(this.stockLiveDataModel);

  final StockLiveDataModel stockLiveDataModel;

  @override
  void add(BuildContext context) {
    void _onConfirm(ProductFamily family) {
      stockLiveDataModel.addProductFamily(family);

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: family,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertProductFamily,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
      Navigator.pop(context);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: FamilyEditor(
              family: ProductFamily(name: "", reference: ""),
              createCallback: _onConfirm,
              confirmLabel: Labels.add,
            )));
  }

  @override
  void edit(BuildContext context, ProductFamily family, int index) {
    void onEdit(Map<String, dynamic> updatedField, ProductFamily family) {
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: family,
        ServicesData.databaseSelector: updatedField,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.updateProductFamily,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
      stockLiveDataModel.updateProductFamily(family, index);
      Navigator.pop(context);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: FamilyEditor(
              family: family.copyWith(),
              editMode: true,
              editCallback: onEdit,
              confirmLabel: Labels.update,
            )));
  }

  @override
  void refresh(BuildContext context) {
    _showLoadingAlert(context);

    void onResult(List<ProductFamily> familllies) {
      Navigator.pop(context);
      stockLiveDataModel.setAllFamillies(familllies);
    }

    ServiceMessageDataMap data = {
      ServicesData.databaseSelector: {},
    };

    ServiceMessage message = ServiceMessage<List<ProductFamily>>(
      data: data,
      event: DatabaseEvent.loadProductFamillies,
      service: AppServices.database,
      callback: onResult,
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
  }

  @override
  void remove(BuildContext context, ProductFamily family) {
    void onRemove() {
      stockLiveDataModel.deleteProductFamily(family);

      Map<ServicesData, dynamic> data = {ServicesData.instance: family};
      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.deleteProductFamily,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: ConfirmDialog(
              onConfirm: onRemove,
              message: Messages.deleteElement,
            )));
  }

  @override
  void search(BuildContext context) {
    void _onResult(List<ProductFamily> familllies) {
      stockLiveDataModel.setAllFamillies(familllies);
      Navigator.pop(context);
    }

    void onSearch(Map<String, dynamic> selector) {
      _showLoadingAlert(context);

      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector: selector,
      };

      ServiceMessage message = ServiceMessage<List<ProductFamily>>(
          service: AppServices.database,
          event: DatabaseEvent.searchProductFamily,
          data: data,
          hasCallback: true,
          callback: _onResult);

      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: SearchEditor(
              searchFieldBuilder: buildSearchFields,
              searchCallback: onSearch,
            )));
  }

  List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
      RegisterSearchQueryBuilder onDeselect) {
    return [
      SearchFieldText(
          label: Labels.name,
          identifier: ProductFamilyFields.name.name,
          onSelected: onSelect,
          onDeselected: onDeselect),
      SearchFieldText(
          label: Labels.reference,
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
    void _onResult(List<ProductFamily> famillies) {
      stockLiveDataModel.setAllFamillies(famillies);
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
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
  }
}
