import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Application/Blocs/Deposit/deposit.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'deposit_form.dart';

class DepositEditor extends StatelessWidget {
  const DepositEditor({
    Key? key,
    this.editMode = false,
  }) : super(key: key);

  final bool editMode;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;

  void _loadProductDetaills(DepositBloc bloc, String searchValue) {
    bloc.add(SearchDepositProduct(searchValue));
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final String confirmLabel = editMode
        ? Translations.of(context)!.update
        : Translations.of(context)!.add;

    final DepositBloc bloc = BlocProvider.of<DepositBloc>(context);

    return BlocBuilder<DepositBloc, DepositState>(builder: (context, state) {
      final record = state.activeDepositRecord.copyWith();

      final SaleEditorMode depositMode = editMode
          ? SaleEditorMode.editModeInstance(record)
          : SaleEditorMode.createModeInstance(record);

      return Padding(
        padding: const EdgeInsets.all(Measures.paddingNormal),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: searchBarFlex,
                  child: DefaultDecorator(
                    child: _SearchBar(
                      onSearch: ((value) => _loadProductDetaills(bloc, value)),
                    ),
                  ),
                ),
                Expanded(
                  flex: bodyFlex,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: DefaultDecorator(
                              child: ProductForm(
                        product: state.loadedProduct,
                      ))),
                      const SizedBox(width: Measures.small),
                      Expanded(
                        child: DefaultDecorator(
                            child: DepositForm(
                          record: state.activeDepositRecord,
                          models: state.loadedProduct.models,
                          depositMode: depositMode,
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
                            if(!editMode){
                              bloc.add(RegisterDeposit());
                            }
                            AppNavigator.maybePop();
                          }
                        },
                      ),
                      DefaultButton(
                        label: confirmLabel,
                        onPressed: () {
                          bloc.add(AddDepositProduct());
                        },
                      ),
                    ],
                  ),
                )
              ],
            )),
      );
    });
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key, required this.onSearch}) : super(key: key);

  final Callback<String> onSearch;

  @override
  Widget build(BuildContext context) {
    String searchValue = '';

    void setSearchValue(String? value) {
      if (value != null) {
        searchValue = value;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AttributeTextField(
            label: Translations.of(context)!.reference,
            initialValue: searchValue,
            onChanged: setSearchValue,
          ),
        ),
        Flexible(
          child: DefaultButton(
            label: Translations.of(context)!.search,
            onPressed: () {
              onSearch(searchValue);
            },
          ),
        ),
      ],
    );
  }
}
