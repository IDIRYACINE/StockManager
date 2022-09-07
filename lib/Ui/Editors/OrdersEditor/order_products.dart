import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_editors.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/SaleEditor.dart/sale_form.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'editor_forms.dart';
import 'editor_mode.dart';

class OrderProductEditor extends StatelessWidget {
  const OrderProductEditor(
      {Key? key,
      this.editMode = false,
      required this.orderProduct,
      this.createCallback,
      this.editCallback,
      required this.confirmLabel,
      this.onSearch,
      required this.order})
      : assert(
          ((createCallback == null) && (editCallback != null)) ||
             ((createCallback != null) && (editCallback == null)),
          'set only one callback edit or create',
        ),
        super(key: key);

  final bool editMode;
  final OrderProduct orderProduct;
  final Order order;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;
  final Callback<OrderProduct>? createCallback;
  final Callback<OrderProduct>? editCallback;
  final String confirmLabel;
  final EditorSearchCallback? onSearch;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final ValueNotifier<Product> product =
        ValueNotifier(Product.defaultInstance());

    final OrderProductEditorMode<Callback<OrderProduct>> orderProductEditorMode =
        OrderProductEditorMode.createModeInstance(orderProduct, order);

    final ProductFormEditor productFormEditor = ProductFormEditor();

    void updateProduct(List<Product> products) {
      if (products.isNotEmpty) {
        Product p = products.first;

        productFormEditor.productNameController.text = p.name;
        productFormEditor.minSellingPriceController.text =
            p.sellingPrice.toString();
        productFormEditor.sellingPriceController.text =
            p.sellingPrice.toString();
        productFormEditor.familyController.text = p.productFamily;
        productFormEditor.referenceController.text = p.reference;

        orderProductEditorMode.sellingPriceController.text = p.sellingPrice.toString();
        
        orderProduct.product = p.name;
        orderProduct.reference = p.reference;
        orderProduct.sellingPrice = p.sellingPrice;
        orderProduct.buyingPrice = p.buyingPrice;

        product.value = p;
      }
    }

    void _onSearch(String barcode) {
      onSearch?.call(barcode, updateProduct);
    }

    return Padding(
        padding: const EdgeInsets.all(Measures.paddingLarge),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if(!editMode)
              Flexible(
                flex: searchBarFlex,
                child: DefaultDecorator(
                  child: SearchBar(onSearch: _onSearch),
                ),
              ),
              Expanded(
                flex: bodyFlex,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: DefaultDecorator(
                            child: ProductForm(
                      product: product,
                      productFormEditor: productFormEditor,
                    ))),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: DefaultDecorator(
                          child: Padding(
                        padding: const EdgeInsets.all(Measures.small),
                        child: OrderProductForm(
                          product: product,
                          orderProductEditorMode: orderProductEditorMode,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: actionsFlex,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultButton(
                        label: Labels.cancel,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    DefaultButton(
                      label: confirmLabel,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (!editMode) {
                            orderProductEditorMode.confirm(createCallback!);
                          }
                          else{
                            orderProductEditorMode.confirm(editCallback!);
                          }
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
