import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/model_selector.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DepositForm extends StatelessWidget {
  const DepositForm({Key? key, required this.product, required this.record})
      : super(key: key);

  final Product product;
  final Record record;

  void setRemainingPayement(String? remainingPayement) {
    if (remainingPayement != null) {
      record.remainingPayement = double.tryParse(remainingPayement);
    }
  }

  void setSellingPrice(String? sellingPrice) {
    if (sellingPrice != null) {
      record.sellingPrice = double.parse(sellingPrice);
    }
  }

  void setSellerName(Seller seller) {
    record.sellerName = seller.name;
  }

  void setDeposit(String? deposit) {
    if (deposit != null) {
      record.deposit = double.parse(deposit);
    }
  }

  void setCustomerName(String? customerName) {
    if (customerName != null) {
      record.customer = customerName;
    }
  }

  void setColor(String color) {
    record.productColor = color;
  }

  void setSize(String size) {
    record.productSize = size;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        SelectorDropDown(
            onSelect: setSellerName,
            items: Provider.of<SellersLiveDataModel>(context, listen: false)
                .loadedSellers,
            label: const Text(Labels.sellerName)),
        AttributeTextField(
          initialValue: '',
          onChanged: setCustomerName,
          label: Labels.customerName,
        ),
        AttributeTextField(
          initialValue: product.sellingPrice.toString(),
          onChanged: setSellingPrice,
          label: Labels.sellingPrice,
        ),
        AttributeTextField(
          initialValue: record.deposit?.toString() ?? '',
          onChanged: setDeposit,
          label: Labels.deposit,
        ),
        AttributeTextField(
          initialValue: record.remainingPayement?.toString() ?? '',
          label: Labels.remainingPayement,
          readOnly: true,
        ),
        const SizedBox(height: Measures.small),
        ModelSelector(
          productModels: product.models,
          colorSelectorCallback: setColor,
          sizeSelectorCallback: setSize,
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
