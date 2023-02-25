import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/utility_wrappers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Ui/Generics/default_decorator.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Features/Orders/OrdersEditor/editor_forms.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'package:stock_manager/Application/Editors/order_mode.dart';
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
            RecordProduct.defaultInstance(), order);

    final ProductFormEditor productFormEditor = ProductFormEditor();

    final AppJson<dynamic> updatedValuesCache = {};

    final OrderFormEditorMode<Callback<Order>> orderEditorMode =
        OrderFormEditorMode.createModeInstance(order);

    late RecordProduct orderProduct;

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

        orderProduct = RecordProduct.defaultInstance();
        orderProduct.product = p.name;
        orderProduct.reference = p.reference;
        orderProduct.sellingPrice = p.sellingPrice;

        orderProductEditorMode.setOrderProduct(orderProduct);
        product.value = p;
      }
    }

    void onSearchResult(String barcode) {
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
                    child: SearchBar(onSearch: onSearchResult),
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
                        label: Translations.of(context)!.cancel,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    DefaultButton(
                        label: Translations.of(context)!.done,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            orderEditorMode.confirm(createOrderCallback!);
                            Navigator.pop(context);
                          }
                        }),
                    DefaultButton(
                      label: Translations.of(context)!.add,
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
