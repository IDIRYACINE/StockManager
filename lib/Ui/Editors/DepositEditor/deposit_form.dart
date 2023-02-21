import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Ui/Editors/Models/sale_mode.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Generics/selector_dropdown.dart';
import 'package:stock_manager/Ui/Generics/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DepositForm extends StatelessWidget {
  const DepositForm(
      {Key? key,
      required this.models,
      required this.record,
      required this.depositMode,
      required this.formEditor
      })
      : super(key: key);

  final ProductModelsType models;
  final Record record;
  final SaleEditorMode depositMode;
  final ProductFormEditor formEditor;


  @override
  Widget build(BuildContext context) {

    final sellersDropdown = []
        .map((e) => DropdownAdapters.sellerMenuItemAdapter(e))
        .toList();

    final ValueNotifier<Seller?> sellerNotifier = ValueNotifier(null);

    return SingleChildScrollView(
      child: 
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SelectorDropDown<Seller>(
                  onSelect: (seller) {
                    depositMode.setSeller(seller);
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
                        initialValue: record.customer,
                        onChanged: depositMode.setCustomer,
                        label: Translations.of(context)!.customerName,
                      ),
                    ),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: AttributeTextField(
                        initialValue: record.phoneNumber.toString(),
                        label: Translations.of(context)!.phoneNumber,
                        onChanged: depositMode.setPhoneNumber,
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
                        initialValue: record.city,
                        label: Translations.of(context)!.city,
                        onChanged: depositMode.setCity,
                      ),
                    ),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: AttributeTextField(
                        initialValue: record.address,
                        label: Translations.of(context)!.address,
                        onChanged: depositMode.setAddress,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: depositMode.sellingPriceController,
                  onChanged: depositMode.setSellingPrice,
                  label: Translations.of(context)!.sellingPrice,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: depositMode.depositController,
                  onChanged: depositMode.setDeposit,
                  label: Translations.of(context)!.deposit,
                ),
                const SizedBox(height: Measures.medium),
                AttributeTextField(
                  controller: depositMode.remainingPaymenentController,
                  label: Translations.of(context)!.remainingPayement,
                  readOnly: true,
                ),
                const SizedBox(height: Measures.small),
                ModelSelector(
                  productModels: models,
                  colorSelectorCallback: depositMode.setColor,
                  sizeSelectorCallback: depositMode.setSize,
                ),
                const SizedBox(height: Measures.medium),
              ],
            
          ),
    );
  }
}

class ProductForm extends StatelessWidget {
  const ProductForm({Key? key, required this.product})
      : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            DefaultDecorator(
              child:  FaultToleratedImage(
                    imageUrl: product.imageUrl ?? '',
              )
                
              
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
          ],
        ));
  }
}
