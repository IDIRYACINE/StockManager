
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Editors/OrdersEditor/editor_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrderProductForm extends StatelessWidget {
  const OrderProductForm(
      {Key? key,
      required this.product,
      required this.orderProductEditorMode})
      : super(key: key);

  final ValueListenable<Product> product;
  final OrderProductEditorMode orderProductEditorMode;

  DropdownMenuItem<Seller> sellerMenuItemAdapter(Seller seller) {
    return DropdownMenuItem(
      value: seller,
      child: Text(seller.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        AttributeTextField(
          controller: orderProductEditorMode.sellingPriceController,
          onChanged: orderProductEditorMode.setSellingPrice,
          label: Labels.sellingPrice,
        ),
        const SizedBox(height: Measures.small),
        ValueListenableBuilder<Product>(
            valueListenable: product,
            builder: (context, product, child) {
              return ModelSelector(
                productModels: product.models,
                colorSelectorCallback: orderProductEditorMode.setColor,
                sizeSelectorCallback: orderProductEditorMode.setSize,
              );
            }),
      ],
    );
  }
}

class OrderForm extends StatelessWidget{
  
  const OrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container();
  }
}

