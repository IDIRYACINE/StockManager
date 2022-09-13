import 'package:flutter/cupertino.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Editors/SellersEditor.dart/seller_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class SellerForm extends StatelessWidget {
  const SellerForm(
      {Key? key, required this.seller, required this.sellerEditorMode})
      : super(key: key);

  final Seller seller;
  final SellerEditorMode sellerEditorMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Measures.small),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              child: Center(
            child: BrowseImage(
              imageUrl: seller.imageUrl,
              onImageSelected: sellerEditorMode.setImage,
            ),
          )),
          const SizedBox(height: Measures.large),
          Flexible(
              child: AttributeTextField(
            initialValue: seller.name,
            onChanged: sellerEditorMode.setName,
            label: Translations.of(context).sellerName,
          )),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: AttributeTextField(
            initialValue: seller.phone.toString(),
            onChanged: sellerEditorMode.setPhone,
            label: Translations.of(context).phoneNumber,
          )),
        ],
      ),
    );
  }
}
