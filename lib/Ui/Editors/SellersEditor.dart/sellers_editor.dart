import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/SellersEditor.dart/seller_form.dart';
import 'package:stock_manager/Ui/Editors/SellersEditor.dart/seller_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                    label: Labels.cancel,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                DefaultButton(
                  label: Labels.save,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (editMode) {
                        sellerEditorMode.confirm(editCallback);
                      } else {
                        sellerEditorMode.confirm(createCallback);
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