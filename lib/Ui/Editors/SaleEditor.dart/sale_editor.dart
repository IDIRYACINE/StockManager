import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Application/Blocs/Purchase/purchase.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_form.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'package:stock_manager/l10n/generated/app_translations.dart';

class SaleEditor extends StatelessWidget {
  const SaleEditor({
    Key? key,
    this.editMode = false,
  }) : super(key: key);

  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;
  final bool editMode;

  void _loadProductDetaills(PurchaseBloc bloc, String searchValue) {
    bloc.add(SearchPurchase(searchValue));
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final String confirmLabel = editMode
        ? Translations.of(context)!.update
        : Translations.of(context)!.add;

    final PurchaseBloc bloc = BlocProvider.of<PurchaseBloc>(context);

    return BlocBuilder<PurchaseBloc, PurchaseState>(builder: (context, state) {
      final record = state.activePurchaseRecord.copyWith();

      final SaleEditorMode saleMode = editMode
          ? SaleEditorMode.editModeInstance(record)
          : SaleEditorMode.createModeInstance(record);

      return Padding(
        padding: const EdgeInsets.all(Measures.paddingLarge),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (!editMode)
                Flexible(
                  flex: searchBarFlex,
                  child: DefaultDecorator(
                    child: SearchBar(
                        onSearch: (value) => _loadProductDetaills(bloc, value)),
                  ),
                ),
              Expanded(
                flex: bodyFlex,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: DefaultDecorator(
                        child: SingleChildScrollView(
                          child: ProductForm(
                            productEditor: state.productFormEditor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: DefaultDecorator(
                          child: Padding(
                        padding: const EdgeInsets.all(Measures.small),
                        child: SaleForm(
                          product: state.loadedProduct,
                          record: record,
                          saleEditorMode: saleMode,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: actionsFlex,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultButton(
                        label: Translations.of(context)!.cancel,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    DefaultButton(
                      label: Translations.of(context)!.done,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          
                          bloc.add(RegisterPurchase());

                          AppNavigator.maybePop();
                        }
                      },
                    ),
                    DefaultButton(
                      label: confirmLabel,
                      onPressed: () {
                        final recordProduct = saleMode.getRecordProduct();

                        bloc.add(AddPurchaseProduct(recordProduct));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
