import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/SellersEditor.dart/seller_form.dart';
import 'package:stock_manager/Ui/Editors/Models/seller_mode.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SellersEditor extends StatelessWidget {
  const SellersEditor({
    Key? key,
    this.editMode = false,
    required this.seller,
    required String confirmLabel,
    this.createCallback,
    this.editCallback,
  })  : assert(
          (editMode && editCallback != null) ||
              (!editMode && createCallback != null),
          'editMode and its callback must be set together',
        ),
        super(key: key);

  final bool editMode;
  final Seller seller;

  final Callback<Seller>? createCallback;
  final EditorCallback<AppJson, Seller>? editCallback;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final dynamic sellerEditorMode = editMode
        ? SellerEditorMode.editModeInstance(seller)
        : SellerEditorMode.createModeInstance(seller);

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingNormal),
      child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start, children: [
            Flexible(
                child: SellerForm(
              seller: seller,
              sellerEditorMode: sellerEditorMode,
            )),
            const SizedBox(height: Measures.small),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultButton(
                    label: Translations.of(context)!.
cancel,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                DefaultButton(
                  label: Translations.of(context)!.
save,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (editMode) {
                        sellerEditorMode.result(editCallback);
                      } else {
                        sellerEditorMode.result(createCallback);
                      }
                    }
                  },
                ),
              ],
            )
          ])),
    );
  }
}
