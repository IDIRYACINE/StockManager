import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Features/Stock/i_stock.dart';
import 'package:stock_manager/Features/Stock/stock_feature.dart';
import 'package:stock_manager/Types/i_database.dart';
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
          editCallback: (updatedValues, family) => {},
          confirmLabel: Translations.of(context)!.update,
        ),
      ),
    );
  }

  @override
  void refresh(BuildContext context) {}

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
    _showLoadingAlert(context);
  }
}
