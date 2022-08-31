
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/Controllers/i_stock.dart';
import 'package:stock_manager/Types/Database/i_database.dart';
import 'package:stock_manager/Types/Generic/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_editor.dart';
import 'package:stock_manager/Ui/Components/Editors/product_family_editor.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
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

  List<String> productToRowData(Product product) {
    return [
      product.name,
      product.productFamily,
      product.totalQuantity.toString(),
      product.originalPrice.toString(),
      product.name,
    ];
  }

  List<String> familyToRowData(ProductFamily family) {
    return [
      family.name,
      family.reference,
    ];
  }

  DropdownMenuItem<StockTypes> stockTypesAdapter(StockTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  void onSelectStockType(StockTypes value) {
    _stockDelegate =
        (value == StockTypes.products) ? _productsDelegate : _familliesDelegate;

    _selectedStockType.value = value;
  }

  void registerLastSelectedRow(Callback<bool> toggleRow , int rowIndex,VoidCallback updateRow) {
    if(_lastRowIndex != rowIndex && _toggleLastSelectedRow != null) {
      _toggleLastSelectedRow!(false);
    }
    
    _lastRowIndex = rowIndex;
    _toggleLastSelectedRow = toggleRow;

        toggleRow(true);

  }

  ValueListenable<StockTypes> get selectedStockType => _selectedStockType;
}

class _ProductsDelegate implements IStockDelegate {
  @override
  void add(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: ProductEditor(
          confirmCallback:
              Provider.of<StockLiveDataModel>(context, listen: false).addProduct,
          confirmLabel: Labels.add,
          product: Product(),
        ),
      ),
    );
  }

  @override
  void edit(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Material(
        child: ProductEditor(
          product: Provider.of<StockLiveDataModel>(context, listen: false)
              .selectedProduct,
          confirmCallback:
              Provider.of<StockLiveDataModel>(context, listen: false).updateProduct,
          confirmLabel: Labels.update,
        ),
      ),
    );
  }

  @override
  void refresh(BuildContext context) {}

  @override
  void remove(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Material(
                child: ConfirmDialog(
              onConfirm: () {},
              message: Messages.deleteElement,
            )));
  }

  @override
  void search(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: SearchEditor(searchFieldBuilder: buildSearchFields)));
  }

  List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
      RegisterSearchQueryBuilder onDeselect) {
    return [
      SearchFieldText(
        label: Labels.barcode,
        identifier: ProductsFields.barcode.name,
        onSelected: onSelect,
        onDeselected: onDeselect,
        allowedSearchTypes: const [SearchType.equals],
      ),
      SearchFieldText(
        label: Labels.reference,
        identifier: ProductsFields.reference.name,
        onSelected: onSelect,
        onDeselected: onDeselect,
        allowedSearchTypes: const [SearchType.equals],
      ),
      SearchFieldDropDown(
          label: Labels.selectProductFamily,
          identifier: ProductsFields.family.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
          values: const [])
    ];
  }
}

class _FamilliesDelegate implements IStockDelegate {
  @override
  void add(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Material(
                child: FamilyEditor(
              family: ProductFamily(name: "", reference: ""),
              onConfirm:
                  Provider.of<StockLiveDataModel>(context, listen: false)
                      .addProductFamily,
              confirmLabel: Labels.add,
            )));
  }

  @override
  void edit(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Material(
                child: FamilyEditor(
              family: Provider.of<StockLiveDataModel>(context, listen: false)
                      .selectedFamily,
              onConfirm:
                  Provider.of<StockLiveDataModel>(context, listen: false)
                      .updateProductFamily,
              confirmLabel: Labels.update,
            )));
  }

  @override
  void refresh(BuildContext context) {}

  @override
  void remove(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Material(
                child: ConfirmDialog(
              onConfirm: () {},
              message: Messages.deleteElement,
            )));
  }

  @override
  void search(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: SearchEditor(
              searchFieldBuilder: buildSearchFields,
            )));
  }

  List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
      RegisterSearchQueryBuilder onDeselect) {
    return [
      SearchFieldText(
          label: Labels.name,
          identifier: ProductsFamilyFields.name.name,
          onSelected: onSelect,
          onDeselected: onDeselect),
      SearchFieldText(
          label: Labels.reference,
          identifier: ProductsFamilyFields.reference.name,
          onSelected: onSelect,
          onDeselected: onDeselect),
    ];
  }
}
