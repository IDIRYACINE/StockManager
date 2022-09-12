import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/utility_wrappers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_editors.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/editor_forms.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'editor_mode.dart';

class SpreardedOrderEditor extends StatelessWidget {
  const SpreardedOrderEditor(
      {Key? key,
      this.editMode = false,
      this.onSearch,
      required this.confirmLabel,
      this.createOrderCallback,
      this.editOrderCallback,
      required this.order})
      : super(key: key);

  final bool editMode;

  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;
  final EditorSearchCallback? onSearch;
  final String confirmLabel;
  final Order order;

  final Callback2<AppJson, SpreadedOrdersWrapper>? editOrderCallback;
  final Callback<Order>? createOrderCallback;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final ValueNotifier<Product> product =
        ValueNotifier(Product.defaultInstance());

    final OrderProductEditorMode orderProductEditorMode =
        OrderProductEditorMode.createModeInstance(
            OrderProduct.defaultInstance(), order);

    final ProductFormEditor productFormEditor = ProductFormEditor();

    final AppJson<dynamic> updatedValuesCache = {};

    final OrderFormEditorMode<Callback<Order>> orderEditorMode =
        OrderFormEditorMode.createModeInstance(order);

    late OrderProduct orderProduct;

    orderProductEditorMode.setUpdatedValuesMap(updatedValuesCache);

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
        productFormEditor.remainingQuantity.text = p.totalQuantity.toString();

        orderProduct = OrderProduct.defaultInstance();
        orderProduct.product = p.name;
        orderProduct.reference = p.reference;
        orderProduct.sellingPrice = p.sellingPrice;
        orderProduct.buyingPrice = p.buyingPrice;

        orderProductEditorMode.setOrderProduct(orderProduct);
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
              if (!editMode)
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
                          child: Padding(
                        padding: const EdgeInsets.all(Measures.small),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          child: OrderForm(
                            order: order,
                            orderFormEditorMode: orderEditorMode,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(width: Measures.small),
                    Expanded(
                        child: DefaultDecorator(
                            child: SpreadedOrderProductForm(
                      product: product,
                      productFormEditor: productFormEditor,
                      orderProductEditorMode: orderProductEditorMode,
                    ))),
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
                        label: Labels.done,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            orderEditorMode.confirm(createOrderCallback!);
                            Navigator.pop(context);
                          }
                        }),
                    DefaultButton(
                      label: Labels.addProduct,
                      onPressed: () {
                        orderProduct.timeStamp =
                            Utility.getTimeStamp().toString();
                        orderProductEditorMode.appendToOrder();
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
