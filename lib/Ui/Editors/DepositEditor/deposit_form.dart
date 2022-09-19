import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Generics/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DepositForm extends StatefulWidget {
  const DepositForm(
      {Key? key,
      required this.product,
      required this.record,
      required this.depositMode})
      : super(key: key);

  final ValueListenable<Product> product;
  final Record record;
  final SaleEditorMode depositMode;

  @override
  State<DepositForm> createState() => _DepositFormState();
}

class _DepositFormState extends State<DepositForm> {
  @override
  Widget build(BuildContext context) {
    final sellersLiveModel =
        Provider.of<ControllersProvider>(context, listen: false)
            .sellersLiveModel;

    final sellersDropdown = sellersLiveModel.loadedSellers
        .map((e) => DropdownAdapters.sellerMenuItemAdapter(e))
        .toList();
    final ValueNotifier<Seller?> sellerNotifier = ValueNotifier(null);

    return SingleChildScrollView(
      child: ValueListenableBuilder<Product>(
          valueListenable: widget.product,
          builder: (context, product, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SelectorDropDown<Seller>(
                  onSelect: (seller) {
                    widget.depositMode.setSeller(seller);
                    sellerNotifier.value = seller;
                  },
                  items: sellersDropdown,
                  label: Text(Translations.of(context)!.sellerName),
                  initialSelection: sellerNotifier,
                ),
                const SizedBox(height: Measures.medium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AttributeTextField(
                        initialValue: widget.record.customer,
                        onChanged: widget.depositMode.setCustomer,
                        label: Translations.of(context)!.customerName,
                      ),
                    ),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: AttributeTextField(
                        initialValue: widget.record.phoneNumber.toString(),
                        label: Translations.of(context)!.phoneNumber,
                        onChanged: widget.depositMode.setPhoneNumber,
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
                        initialValue: widget.record.city,
                        label: Translations.of(context)!.city,
                        onChanged: widget.depositMode.setCity,
                      ),
                    ),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: AttributeTextField(
                        initialValue: widget.record.address,
                        label: Translations.of(context)!.address,
                        onChanged: widget.depositMode.setAddress,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: widget.depositMode.sellingPriceController,
                  onChanged: widget.depositMode.setSellingPrice,
                  label: Translations.of(context)!.sellingPrice,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: widget.depositMode.depositController,
                  onChanged: widget.depositMode.setDeposit,
                  label: Translations.of(context)!.deposit,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: widget.depositMode.remainingPaymenentController,
                  label: Translations.of(context)!.remainingPayement,
                  readOnly: true,
                ),
                const SizedBox(height: Measures.small),
                ModelSelector(
                  productModels: product.models,
                  colorSelectorCallback: widget.depositMode.setColor,
                  sizeSelectorCallback: widget.depositMode.setSize,
                ),
                const SizedBox(height: Measures.medium),
              ],
            );
          }),
    );
  }
}

class ProductForm extends StatefulWidget {
  const ProductForm({Key? key, required this.product, required this.editorMode})
      : super(key: key);
  final ValueListenable<Product> product;
  final SaleEditorMode editorMode;
  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            DefaultDecorator(
              child: ValueListenableBuilder<Product>(
                valueListenable: widget.product,
                builder: (context, product, child) {
                  return FaultToleratedImage(
                    imageUrl: product.imageUrl ?? '',
                  );
                },
              ),
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.nameController,
              label: Translations.of(context)!.name,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.referenceController,
              label: Translations.of(context)!.reference,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.familyController,
              label: Translations.of(context)!.productFamily,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.minSellingPriceController,
              label: Translations.of(context)!.sellingPrice,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.remainingQuantity,
              label: Translations.of(context)!.quantity,
              readOnly: true,
            ),
          ],
        ));
  }
}
