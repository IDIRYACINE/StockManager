import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Application/Editors/order_mode.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

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
          label: Translations.of(context)!.sellingPrice,
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

class SpreadedOrderProductForm extends StatelessWidget {
  const SpreadedOrderProductForm(
      {Key? key,
      required this.product,
      required this.orderProductEditorMode,
      required this.productFormEditor})
      : super(key: key);

  final ValueListenable<Product> product;
  final OrderProductEditorMode orderProductEditorMode;
  final ProductFormEditor productFormEditor;

  DropdownMenuItem<Seller> sellerMenuItemAdapter(Seller seller) {
    return DropdownMenuItem(
      value: seller,
      child: Text(seller.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          // ProductForm(product: product, productFormEditor: productFormEditor),TODO
          AttributeTextField(
            controller: orderProductEditorMode.sellingPriceController,
            onChanged: orderProductEditorMode.setSellingPrice,
            label: Translations.of(context)!.sellingPrice,
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
      ),
    );
  }
}

class OrderForm extends StatelessWidget {
  const OrderForm(
      {Key? key, required this.order, required this.orderFormEditorMode})
      : super(key: key);

  final Order order;
  final OrderFormEditorMode orderFormEditorMode;

  @override
  Widget build(BuildContext context) {

    final sellersDropdown = []
        .map((e) => DropdownAdapters.sellerMenuItemAdapter(e))
        .toList();

    final ValueNotifier<Seller?> sellerNotifier = ValueNotifier(null);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        SelectorDropDown<Seller>(
          onSelect: (seller) {
            orderFormEditorMode.setSeller(seller);
            sellerNotifier.value = seller;
          },
          items: sellersDropdown,
          label: Text(Translations.of(context)!.sellerName),
          initialSelection: sellerNotifier,
        ),
        AttributeTextField(
          initialValue: order.customerName,
          label: Translations.of(context)!.customerName,
          onChanged: orderFormEditorMode.setClient,
        ),
        const SizedBox(height: Measures.small),
        AttributeTextField(
          initialValue: order.phoneNumber.toString(),
          label: Translations.of(context)!.phoneNumber,
          onChanged: orderFormEditorMode.setPhoneNumber,
        ),
        const SizedBox(height: Measures.small),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AttributeTextField(
                initialValue: order.city,
                label: Translations.of(context)!.city,
                onChanged: orderFormEditorMode.setState,
              ),
            ),
            const SizedBox(width: Measures.small),
            Expanded(
              child: AttributeTextField(
                initialValue: order.address,
                label: Translations.of(context)!.address,
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
                label: Translations.of(context)!.deposit,
                onChanged: orderFormEditorMode.setDeposit,
              ),
            ),
            const SizedBox(width: Measures.small),
            Expanded(
              child: AttributeTextField(
                initialValue: order.deliveryCost.toString(),
                label: Translations.of(context)!.deliveryCost,
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
