import 'package:flutter/cupertino.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SaleForm extends StatelessWidget {
  const SaleForm({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SelectorDropDown(items: [], label: Text(Labels.sellerName)),
          AttributeTextField(
            initialValue: product.name,
            label: Labels.name,
          ),
          const SizedBox(height: Measures.small),
          AttributeTextField(
            initialValue: product.reference,
            label: Labels.reference,
          ),
          const SizedBox(height: Measures.small),
          AttributeTextField(
            initialValue: product.minSellingPrice.toString(),
            label: Labels.minSellingPrice,
          ),
          const SizedBox(height: Measures.small),
          AttributeTextField(
            initialValue: product.buyingPrice.toString(),
            label: Labels.buyingPrice,
            readOnly: true,
          ),
          const SizedBox(height: Measures.small),
          AttributeTextField(
            initialValue: product.sellingPrice.toString(),
            label: Labels.sellingPrice,
          ),
          const SizedBox(height: Measures.small),
          ModelSelector(
            productModles: product.models,
          ),
          const SizedBox(height: Measures.small),
          AttributeTextField(
            initialValue: product.totalQuantity.toString(),
            label: Labels.remainigQuantity,
          ),
          const SizedBox(height: Measures.small),
        ],
      ),
    );
  }
}
