import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Generics/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SaleForm extends StatelessWidget {
  const SaleForm(
      {Key? key,
      required this.product,
      required this.record,
      required this.saleEditorMode,
      r})
      : super(key: key);

  final Product product;
  final Record record;
  final SaleEditorMode saleEditorMode;

  @override
  Widget build(BuildContext context) {
    final sellersLiveModel =
        Provider.of<ControllersProvider>(context, listen: false)
            .sellersLiveModel;

    final sellersDropdown = sellersLiveModel.loadedSellers
        .map((e) => DropdownAdapters.sellerMenuItemAdapter(e))
        .toList();

    final ValueNotifier<Seller?> sellerNotifier = ValueNotifier(null);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        SelectorDropDown<Seller>(
          onSelect: (seller) {
            saleEditorMode.setSeller(seller);
            sellerNotifier.value = seller;
          },
          items: sellersDropdown,
          label: Text(Translations.of(context)!.sellerName),
          initialSelection: sellerNotifier,
        ),
        AttributeTextField(
          initialValue: record.customer,
          label: Translations.of(context)!.customerName,
          onChanged: saleEditorMode.setCustomer,
        ),
        AttributeTextField(
          initialValue: product.sellingPrice.toString(),
          onChanged: saleEditorMode.setSellingPrice,
          label: Translations.of(context)!.sellingPrice,
        ),
        const SizedBox(height: Measures.small),
         ModelSelector(
                productModels: product.models,
                colorSelectorCallback: saleEditorMode.setColor,
                sizeSelectorCallback: saleEditorMode.setSize,
              ),
            
      ],
    );
  }
}

class ProductForm extends StatelessWidget {
  const ProductForm(
      {Key? key, required this.product, })
      : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        DefaultDecorator(
          child: FaultToleratedImage(
                  imageUrl: product.imageUrl ?? '',
              ),
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          initialValue: product.name,
          label: Translations.of(context)!.name,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          initialValue: product.reference,
          label: Translations.of(context)!.reference,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          initialValue: product.productFamily,
          label: Translations.of(context)!.productFamily,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          initialValue: product.sellingPrice.toString(),
          label: Translations.of(context)!.sellingPrice,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          initialValue: product.totalQuantity.toString(),
          label: Translations.of(context)!.quantity,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
      ],
    );
  }
}
