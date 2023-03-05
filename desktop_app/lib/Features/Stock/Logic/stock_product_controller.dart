import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Features/Stock/i_stock.dart';
import 'package:stock_manager/Features/Stock/stock_feature.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class StockProductController implements IStockDelegate<Product> {
  StockProductController(this.bloc);

  final StockBloc bloc;

  @override
  void add(BuildContext context) {
    void onConfirm(Product product) {
      bloc.add(AddProduct(product));
      AppNavigator.pop();
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
      final updateWrapper = UpdateRequestWrapper<Product>(
        product,
        updatedField,
      );

      bloc.add(UpdateProduct(updateWrapper));

      AppNavigator.pop();
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
    bloc.add(RefreshProducts());
  }

  @override
  void remove(BuildContext context, Product product) {
    void onRemove() {
      bloc.add(RemoveProduct(product));
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: onRemove,
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
    // _showLoadingAlert(context);
    bloc.add(SearchProducts(query));
  }

  // void _showLoadingAlert(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       content: BlocListener<StockBloc, StockState>(
  //           listener: (context, state) {
  //             AppNavigator.pop();
  //           },
  //           listenWhen: (previous, current) {
  //             return true;
  //           },
  //           child: const Splash()),
  //     ),
  //   );
  // }
}
