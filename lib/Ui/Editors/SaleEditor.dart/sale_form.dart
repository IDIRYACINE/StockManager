import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/i_editors.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SaleForm extends StatelessWidget {
  const SaleForm(
      {Key? key,
      required this.product,
      required this.record,
      required this.saleEditorMode,
      required this.sellingPriceController})
      : super(key: key);

  final ValueListenable<Product> product;
  final Record record;
  final SaleEditorMode saleEditorMode;
  final TextEditingController sellingPriceController;

  @override
  Widget build(BuildContext context) {
    final sellersLiveModel =
        Provider.of<LiveModelProvider>(context, listen: false).sellersLiveModel;

    final sellersDropdown = sellersLiveModel.loadedSellers
        .map((e) => DropdownAdapters.sellerMenuItemAdapter(e))
        .toList();

    final ValueNotifier<Seller?> sellerNotifier = ValueNotifier(null);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        SelectorDropDown(
          onSelect: saleEditorMode.setSeller,
          items: sellersDropdown,
          label: const Text(Labels.sellerName),
          initialSelection: sellerNotifier,
        ),
        AttributeTextField(
          initialValue: record.customer,
          label: Labels.customerName,
          onChanged: saleEditorMode.setCustomer,
        ),
        AttributeTextField(
          controller: sellingPriceController,
          onChanged: saleEditorMode.setSellingPrice,
          label: Labels.sellingPrice,
        ),
        const SizedBox(height: Measures.small),
        ValueListenableBuilder<Product>(
            valueListenable: product,
            builder: (context, product, child) {
              return ModelSelector(
                productModels: product.models,
                colorSelectorCallback: saleEditorMode.setColor,
                sizeSelectorCallback: saleEditorMode.setSize,
              );
            }),
      ],
    );
  }
}

class ProductForm extends StatefulWidget {
  const ProductForm(
      {Key? key, required this.product, required this.productFormEditor})
      : super(key: key);

  final ValueListenable<Product> product;
  final ProductFormEditor productFormEditor;
  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              }),
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          controller: widget.productFormEditor.productNameController,
          label: Labels.name,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          controller: widget.productFormEditor.referenceController,
          label: Labels.reference,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          controller: widget.productFormEditor.familyController,
          label: Labels.productFamily,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
        AttributeTextField(
          controller: widget.productFormEditor.minSellingPriceController,
          label: Labels.sellingPrice,
          readOnly: true,
        ),
        const SizedBox(height: Measures.medium),
      ],
    ));
  }
}
