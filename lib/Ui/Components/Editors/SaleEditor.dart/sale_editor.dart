import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';
import 'package:stock_manager/Ui/Components/Editors/SaleEditor.dart/sale_form.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SaleEditor extends StatelessWidget {
  const SaleEditor({Key? key,  required this.record, required this.onConfirm, this.isEditing = false, required this.onSearch, required this.confirmLabel})
      : super(key: key);

  final Record record;
  final int searchBarFlex = 2;
  final int bodyFlex = 5;
  final int actionsFlex = 1;

  final Callback<Record> onConfirm;
  final bool isEditing; 
  final Callback<String> onSearch;
  final String confirmLabel;
  

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Product product = Product();

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: searchBarFlex,
                child: DefaultDecorator(
                  child: _SearchBar(onSearch: onSearch),
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
                    ))),
                    const SizedBox(width: Measures.small),
                    Expanded(
                      child: DefaultDecorator(
                          child: Padding(
                            padding:
                                const EdgeInsets.all(Measures.small),
                            child: SaleForm(product: product,record: record,),
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
                          onConfirm(record);
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key, required this.onSearch}) : super(key: key);

  final Callback<String> onSearch;

  void setBarcode(String? barcode){
    if(barcode != null){
      onSearch(barcode);
    }
  }
  
  @override
  Widget build(BuildContext context) {

    String barcode = '';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Expanded(
            child: AttributeTextField(
          label: Labels.barcode,
          initialValue: barcode,
          onChanged: setBarcode ,
        )),
        Flexible(
            child:
                DefaultButton(label: Labels.search, onPressed: (){
                  onSearch(barcode);
                })),
      ],
    );
  }
}
