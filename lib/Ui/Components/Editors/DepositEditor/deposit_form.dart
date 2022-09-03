import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Editors/DepositEditor/deposit_mode.dart';
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
  DropdownMenuItem<Seller> sellerDropdownAdapter(Seller seller) {
    return DropdownMenuItem(
      value: seller,
      child: Text(seller.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<Product>(
          valueListenable: widget.product,
          builder: (context, product, child) {
            widget.depositMode.nameController.text = product.name;
            widget.depositMode.referenceController.text = product.reference;
            widget.depositMode.familyController.text = product.productFamily;
            widget.depositMode.originalPriceController.text =
                product.originalPrice.toString();
            widget.depositMode.sellingPriceController.text =
                product.sellingPrice.toString();

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                SelectorDropDown(
                    onSelect: widget.depositMode.setSellerName,
                    adapter: sellerDropdownAdapter,
                    items: Provider.of<SellersLiveDataModel>(context,
                            listen: false)
                        .loadedSellers,
                    label: const Text(Labels.sellerName)),
                AttributeTextField(
                  controller: widget.depositMode.nameController,
                  onChanged: widget.depositMode.setCustomerName,
                  label: Labels.customerName,
                ),
                AttributeTextField(
                  controller: widget.depositMode.sellingPriceController,
                  onChanged: widget.depositMode.setSellingPrice,
                  label: Labels.sellingPrice,
                ),
                AttributeTextField(
                  controller : widget.depositMode.depositController,
                  onChanged: widget.depositMode.setDeposit,
                  label: Labels.deposit,
                ),
                AttributeTextField(
                  controller:
                      widget.depositMode.remainingPaymenentController,
                  label: Labels.remainingPayement,
                  readOnly: true,
                ),
                const SizedBox(height: Measures.small),
                ModelSelector(
                  productModels: product.models,
                  colorSelectorCallback: widget.depositMode.setColor,
                  sizeSelectorCallback: widget.depositMode.setSize,
                ),
              ],
            );
          }),
    );
  }
}

class ProductForm extends StatefulWidget {
  const ProductForm({Key? key, required this.product}) : super(key: key);
  final ValueListenable<Product> product;
  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController referenceController =
      TextEditingController(text: '');

  final TextEditingController familyController =
      TextEditingController(text: '');
  final TextEditingController originalPriceController =
      TextEditingController(text: '');
  final TextEditingController sellingPriceController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<Product>(
        valueListenable: widget.product,
        builder: (context, product, child) {
          nameController.text = product.name;
          referenceController.text = product.reference;
          familyController.text = product.productFamily;
          originalPriceController.text = product.originalPrice.toString();
          sellingPriceController.text = product.sellingPrice.toString();

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
                label: Labels.name,
                readOnly: true,
              ),
              const SizedBox(height: Measures.medium),
              AttributeTextField(
                initialValue: product.reference,
                label: Labels.reference,
                readOnly: true,
              ),
              const SizedBox(height: Measures.medium),
              AttributeTextField(
                initialValue: product.productFamily,
                label: Labels.productFamily,
                readOnly: true,
              ),
              const SizedBox(height: Measures.medium),
              AttributeTextField(
                initialValue: product.originalPrice.toString(),
                label: Labels.buyingPrice,
                readOnly: true,
              ),
              const SizedBox(height: Measures.medium),
              AttributeTextField(
                initialValue: product.totalQuantity.toString(),
                label: Labels.remainigQuantity,
                readOnly: true,
              ),
              const SizedBox(height: Measures.medium),
            ],
          );
        },
      ),
    );
  }
}
