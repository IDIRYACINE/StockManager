import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Features/Stock/i_stock.dart';
import 'package:stock_manager/Features/Stock/stock_feature.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class ProductFamilyController implements IStockDelegate<ProductFamily> {
  ProductFamilyController(this.bloc);

  final StockBloc bloc;

  @override
  void add(BuildContext context) {
     void onConfirm(ProductFamily family) {
      bloc.add(AddProductFamily(family));
      AppNavigator.pop();
    }
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: FamilyEditor(
          family: ProductFamily(name: "", reference: 0),
          createCallback: onConfirm,
          confirmLabel: Translations.of(context)!.add,
        ),
      ),
    );
  }

  @override
  void edit(BuildContext context, ProductFamily family, int index) {

     void onEdit(Map<String, dynamic> updatedField, ProductFamily family) {
      final updateWrapper = UpdateRequestWrapper<ProductFamily>(
        family,
        updatedField,
      );

      bloc.add(UpdateProductFamily(updateWrapper));

      AppNavigator.pop();
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: FamilyEditor(
          family: family.copyWith(),
          editMode: true,
          editCallback: onEdit,
          confirmLabel: Translations.of(context)!.update,
        ),
      ),
    );
  }

  @override
  void refresh(BuildContext context) {
    bloc.add(RefreshProductFamily());
  }

  @override
  void remove(BuildContext context, ProductFamily family) {

    void onRemove() {
      bloc.add(RemoveProductFamily(family));
      AppNavigator.pop();
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
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SearchEditor(
          searchFieldBuilder: (onSelect, onDeselect) {
            return buildSearchFields(onSelect, onDeselect, context);
          },
          searchCallback: (query) => {
            //TODO: Implement search
          },
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
    _showLoadingAlert(context);
  }
}
