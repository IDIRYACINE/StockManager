import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/famillies.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/Controllers/i_stock.dart';
import 'package:stock_manager/Types/Generic/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_editor.dart';
import 'package:stock_manager/Ui/Components/Editors/product_family_editor.dart';
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

  VoidCallback? _turnOffLastSelectedRow;

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

  void registerLastSelectedRow(VoidCallback turnOffLastRow){
    _turnOffLastSelectedRow?.call();
    
    _turnOffLastSelectedRow = turnOffLastRow;
  }

  ValueListenable<StockTypes> get selectedStockType => _selectedStockType;
}

class _ProductsDelegate implements IStockDelegate {
  @override
  void add(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const Material(child: ProductEditor()));
  }

  @override
  void edit(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const Material(child: ProductEditor()));
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
        builder: (context) => const Material(child: SearchEditor()));
  }
}

class _FamilliesDelegate implements IStockDelegate {
  
  @override
  void add(BuildContext context) {

    void addProductFamily(ProductFamily family) {
      Provider.of<FamilliesLiveDataModel>(context,listen: false).add(family);
    }

    showDialog(
        context: context,
        builder: (context) => Material(child: FamilyEditor(
          onConfirm: addProductFamily,
        )));
  }

  @override
  void edit(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) =>  Material(child: FamilyEditor(
          onConfirm: (family) {
            
          },
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
        builder: (context) => const Material(child: SearchEditor()));
  }
}
