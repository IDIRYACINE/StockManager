import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Editors/OrdersEditor/editor_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'editor_forms.dart';

class OrderCustomerEditor extends StatelessWidget {
  const OrderCustomerEditor({
    Key? key,
    required this.order,
    required this.editCallback,
    required this.confirmLabel,
  }) : super(key: key);

  final Order order;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;
  final EditorCallback<AppJson, Order> editCallback;
  final String confirmLabel;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final AppJson updatedValuesCache =
        Provider.of<OrdersLiveDataModel>(context, listen: false).updatedValues;
    final OrderFormEditorMode<Callback<Order>> editorMode =
        OrderFormEditorMode.editModeInstance(order, updatedValuesCache);

    return Padding(
        padding: const EdgeInsets.all(Measures.paddingLarge),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: bodyFlex,
                child: DefaultDecorator(
                    child: Padding(
                  padding: const EdgeInsets.all(Measures.small),
                  child: OrderForm(
                    order: order,
                    orderFormEditorMode: editorMode,
                  ),
                )),
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
                        if (formKey.currentState!.validate()) {}
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
