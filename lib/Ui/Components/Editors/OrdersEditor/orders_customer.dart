import 'package:flutter/cupertino.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

import 'editor_forms.dart';

class OrderCustomerEditor extends StatelessWidget {
  
  const OrderCustomerEditor(
      {Key? key,
      this.editMode = false,
      required this.order,
      this.createCallback,
      this.editCallback,
      required this.confirmLabel,
      this.onSearch})
      : assert(
          (editMode && editCallback != null) ||
              (!editMode && createCallback != null),
          'editMode and its callback must be set together',
        ),
        assert(!editMode && onSearch != null,
            'editMode and onSearch must be set together'),
        super(key: key);

  final bool editMode;
  final Order order;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;
  final Callback<Order>? createCallback;
  final EditorCallback<AppJson, Order>? editCallback;
  final String confirmLabel;
  final EditorSearchCallback? onSearch;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return   Padding(
        padding: const EdgeInsets.all(Measures.paddingLarge),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
              Expanded(
                flex: bodyFlex,
                child: const DefaultDecorator(
                          child: Padding(
                        padding: EdgeInsets.all(Measures.small),
                        child: OrderForm(
                        
                        ),)
                    ),),
                  
                
              
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
                          if (editMode) {
                          } else {
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

