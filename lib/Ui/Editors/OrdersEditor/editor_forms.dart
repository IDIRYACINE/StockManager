import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/editor_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class OrderProductForm extends StatelessWidget {
  const OrderProductForm(
      {Key? key, required this.product, required this.orderProductEditorMode})
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

class OrderForm extends StatelessWidget {
  const OrderForm(
      {Key? key, required this.order, required this.orderFormEditorMode})
      : super(key: key);

  final Order order;
  final OrderFormEditorMode<Callback<Order>> orderFormEditorMode;

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
        SelectorDropDown(
            adapter: sellerMenuItemAdapter,
            onSelect: orderFormEditorMode.setSeller,
            items: Provider.of<SellersLiveDataModel>(context, listen: false)
                .loadedSellers,
            label: const Text(Labels.sellerName)),
        AttributeTextField(
          initialValue: order.customerName,
          label: Labels.customerName,
          onChanged: orderFormEditorMode.setClient,
        ),
        const SizedBox(height: Measures.small),
        AttributeTextField(
          initialValue: order.phoneNumber.toString(),
          label: Labels.phoneNumber,
          onChanged: orderFormEditorMode.setPhoneNumber,
        ),
        const SizedBox(height: Measures.small),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AttributeTextField(
                initialValue: order.city,
                label: Labels.city,
                onChanged: orderFormEditorMode.setState,
              ),
            ),
            const SizedBox(width: Measures.small),
            Expanded(
              child: AttributeTextField(
                initialValue: order.address,
                label: Labels.address,
                onChanged: orderFormEditorMode.setAddress,
              ),
            ),
          ],
        ),
        const SizedBox(height: Measures.small),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AttributeTextField(
                initialValue: order.deposit.toString(),
                label: Labels.deposit,
                onChanged: orderFormEditorMode.setDeposit,
              ),
            ),
            const SizedBox(width: Measures.small),
            Expanded(
              child: AttributeTextField(
                initialValue: order.deliveryCost.toString(),
                label: Labels.deliveryCost,
                onChanged: orderFormEditorMode.setDeliveryCost,
              ),
            ),
          ],
        ),
        const SizedBox(height: Measures.small),
      ],
    );
  }
}
