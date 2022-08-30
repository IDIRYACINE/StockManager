
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Editors/SellersEditor.dart/seller_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SellersEditor extends StatelessWidget{
  const SellersEditor({Key? key, this.editMode = false, required this.seller, required void Function(Seller element) confirmCallback, required String confirmLabel}) : super(key: key);

  final bool editMode;
  final Seller seller;
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Flexible(child: SellerForm(seller: seller)),
          const SizedBox(height: Measures.small),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultButton(label: Labels.cancel,onPressed: (){}),
              DefaultButton(label: Labels.save,onPressed: (){},),
            ],
          )
        ]
      )
    );
  }
}