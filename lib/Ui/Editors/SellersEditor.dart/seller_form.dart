import 'package:flutter/cupertino.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/SellersEditor.dart/seller_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SellerForm extends StatelessWidget {
  const SellerForm(
      {Key? key, required this.seller, required this.sellerEditorMode})
      : super(key: key);

  final Seller seller;
  final SellerEditorMode sellerEditorMode;

  @override
  Widget build(BuildContext context) {
    return DefaultDecorator(
      child: Padding(
        padding: const EdgeInsets.all(Measures.small),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
                child: Center(
              child: BrowseImage(
                imageUrl: seller.imageUrl,
                onImageSelected: sellerEditorMode.setImage,
              ),
            )),
            Flexible(
                child: AttributeTextField(
              initialValue: seller.name,
              onChanged: sellerEditorMode.setName,
              label: Labels.sellerName,
            )),
            const SizedBox(height: Measures.small),
            Flexible(
                child: AttributeTextField(
              initialValue: seller.phone.toString(),
              onChanged: sellerEditorMode.setPhone,
              label: Labels.phoneNumber,
            )),
          ],
        ),
      ),
    );
  }
}
