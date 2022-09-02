import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_editor.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductFamilyEditor/product_family_editor.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class StockController {
  StockController() {
    _productsDelegate = _ProductsDelegate();
    _familliesDelegate = _FamilliesDelegate();
    _stockDelegate = _productsDelegate;
  }

  late IStockDelegate _stockDelegate, _productsDelegate, _familliesDelegate;

  final ValueNotifier<StockTypes> _selectedStockType =
      ValueNotifier(StockTypes.products);

  Callback<bool>? _toggleLastSelectedRow;
  int _lastRowIndex = -1;

  void edit(BuildContext context) {
    _stockDelegate.edit(context);
  }

  void add(BuildContext context) {
    _stockDelegate.add(context);
  }

  void refresh(BuildContext context) {
    _stockDelegate.refresh(context);
  }

  void remove(BuildContext context) {
    _stockDelegate.remove(context);
  }

  void search(BuildContext context) {
    _stockDelegate.search(context);
  }

  static List<String> productToRowData(Product product) {
    return [
      product.name,
      product.productFamily,
      product.totalQuantity.toString(),
      product.originalPrice.toString(),
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

  void registerLastSelectedRow(
      Callback<bool> toggleRow, int rowIndex, VoidCallback updateRow) {
    if (_lastRowIndex != rowIndex && _toggleLastSelectedRow != null) {
      _toggleLastSelectedRow!(false);
    }

    _lastRowIndex = rowIndex;
    _toggleLastSelectedRow = toggleRow;

    toggleRow(true);
  }

  ValueListenable<StockTypes> get selectedStockType => _selectedStockType;

  void deregisterLastSelectedRow(StockLiveDataModel liveDataModel) {
    _lastRowIndex = -1;
    _toggleLastSelectedRow = null;
    liveDataModel
        .updateSelectedRow = null;
  }
}

class _ProductsDelegate implements IStockDelegate {
  @override
  void add(BuildContext context) {
    void _onConfirm(Product product) {
      Provider.of<StockLiveDataModel>(context, listen: false)
          .addProduct(product);

      Map<ServicesData, dynamic> data = {
        ServicesData.instance: product,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.insertProduct,
          service: AppServices.database);

      ServicesStore.instance.sendMessage(message);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: ProductEditor(
          createCallback: _onConfirm,
          confirmLabel: Labels.add,
          product: Product.defaultInstance(),
        ),
      ),
    );
  }

  @override
  void edit(BuildContext context) {
    void onEdit(Map<String, dynamic> updatedField, Product product) {
      Map<ServicesData, dynamic> data = {
        ServicesData.instance: product,
        ServicesData.databaseSelector: updatedField,
      };

      ServiceMessage message = ServiceMessage(
          data: data,
          event: DatabaseEvent.updateProduct,
          service: AppServices.database);
      ServicesStore.instance.sendMessage(message);
      Provider.of<StockLiveDataModel>(context, listen: false)
          .updateProduct(product);
    }

    showDialog(
      context: context,
      builder: (context) => Material(
        child: ProductEditor(
          product: Provider.of<StockLiveDataModel>(context, listen: false)
              .selectedProduct,
          editMode: true,
          editCallback: onEdit,
          confirmLabel: Labels.update,
        ),
      ),
    );
  }

  @override
  void refresh(BuildContext context) {
    _showLoadingAlert(context);

    void onResult(List<Product> products) {
      Navigator.pop(context);
      Provider.of<StockLiveDataModel>(context, listen: false)
          .setAllProducts(products);
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
  void remove(BuildContext context) {
    void onRemove() {
      StockLiveDataModel liveDataModel =
          Provider.of<StockLiveDataModel>(context, listen: false);
      Product deletedProduct = liveDataModel.selectedProduct;
      liveDataModel.deleteProduct(deletedProduct);

      Map<ServicesData, dynamic> data = {ServicesData.instance: deletedProduct};
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
      Provider.of<StockLiveDataModel>(context, listen: false)
          .setAllProducts(products);
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
            adapter: StockController.productFamilyDropdownAdapter,
            values: Provider.of<StockLiveDataModel>(context, listen: false)
                .loadedProductFamillies)
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
}

class _FamilliesDelegate implements IStockDelegate {
  @override
  void add(BuildContext context) {
    void _onConfirm(ProductFamily family) {
      Provider.of<StockLiveDataModel>(context, listen: false)
          .addProductFamily(family);

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
  void edit(BuildContext context) {
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
      Provider.of<StockLiveDataModel>(context, listen: false)
          .updateProductFamily(family);
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: FamilyEditor(
              family: Provider.of<StockLiveDataModel>(context, listen: false)
                  .selectedFamily,
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
      Provider.of<StockLiveDataModel>(context, listen: false)
          .setAllFamillies(familllies);
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
  void remove(BuildContext context) {
    void onRemove() {
      StockLiveDataModel liveDataModel =
          Provider.of<StockLiveDataModel>(context, listen: false);
      ProductFamily deletedFamily = liveDataModel.selectedFamily;
      liveDataModel.deleteProductFamily(deletedFamily);

      Map<ServicesData, dynamic> data = {ServicesData.instance: deletedFamily};
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
      Provider.of<StockLiveDataModel>(context, listen: false)
          .setAllFamillies(familllies);
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
}
