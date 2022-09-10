import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/DepositEditor/deposit_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DepositForm extends StatefulWidget {
  const DepositForm(
      {Key? key,
      required this.product,
      required this.record,
      required this.depositMode})
      : super(key: key);

  final ValueListenable<Product> product;
  final Record record;
  final DepositEditorMode depositMode;

  @override
  State<DepositForm> createState() => _DepositFormState();
}

class _DepositFormState extends State<DepositForm> {
  @override
  Widget build(BuildContext context) {
    final sellersLiveModel =
        Provider.of<LiveModelProvider>(context, listen: false).sellersLiveModel;

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
                    onSelect: (seller){widget.depositMode.setSellerName(seller);
                    sellerNotifier.value = seller; 
                    },
                    items: sellersDropdown,
                    label: const Text(Labels.sellerName), 
                    initialSelection: sellerNotifier,),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  initialValue: widget.record.customer,
                  onChanged: widget.depositMode.setCustomerName,
                  label: Labels.customerName,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: widget.depositMode.sellingPriceController,
                  onChanged: widget.depositMode.setSellingPrice,
                  label: Labels.sellingPrice,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: widget.depositMode.depositController,
                  onChanged: widget.depositMode.setDeposit,
                  label: Labels.deposit,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: widget.depositMode.remainingPaymenentController,
                  label: Labels.remainingPayement,
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
  final DepositEditorMode editorMode;
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
              label: Labels.name,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.referenceController,
              label: Labels.reference,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.familyController,
              label: Labels.productFamily,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
            AttributeTextField(
              controller: widget.editorMode.minSellingPriceController,
              label: Labels.sellingPrice,
              readOnly: true,
            ),
            const SizedBox(height: Measures.medium),
          ],
        ));
  }
}
