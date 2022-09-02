
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SaleForm extends StatelessWidget {
  const SaleForm({Key? key, required this.product, required this.record, required this.saleEditorMode}) : super(key: key);

  final Product product;
  final Record record;
  final SaleEditorMode saleEditorMode;

  DropdownMenuItem<Seller> sellerMenuItemAdapter(Seller seller){
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
            onSelect: saleEditorMode.setSeller, items:Provider.of<SellersLiveDataModel>(context,listen:false).loadedSellers, label: const Text(Labels.sellerName)),
         AttributeTextField(
          initialValue: record.customer,
          label: Labels.customerName,
          onChanged: saleEditorMode.setCustomer,
        ),
        AttributeTextField(
          initialValue: product.sellingPrice.toString(),
          onChanged: saleEditorMode.setSellingPrice,
          label: Labels.sellingPrice,
        ),
        const SizedBox(height: Measures.small),
        ModelSelector(
          productModels: product.models, colorSelectorCallback: saleEditorMode.setColor, sizeSelectorCallback: saleEditorMode.setSize,
        ),
      ],
    );
  }
}

class ProductForm extends StatelessWidget {
  const ProductForm({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
 
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
           DefaultDecorator(
            child: FaultToleratedImage(imageUrl:product.imageUrl??'',),
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
      ),
    );
  }
}
