

import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ProductModels extends StatefulWidget {
  const ProductModels({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<StatefulWidget> createState() => _ProductModelsState();
}

class _ProductModelsState extends State<ProductModels> {

  void add() {
    setState(() {
      widget.product.models.add(ProductModel());
    });
    
  }

  void remove(int index) {
    setState(() {
      widget.product.models.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Measures.medium),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                    child: ElevatedButton(
                  onPressed: add,
                  child: const Text(Labels.add),
                )),
              ],
            ),
          ),
          Expanded(child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: Measures.small,),
            itemCount: widget.product.models.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductModelRow(model:widget.product.models[index],onDelete: (){remove(index);},);
              },
          ))
        ],
      ),
    );
  }
}

class ProductModelRow extends StatelessWidget{

  const ProductModelRow({Key? key, required this.model, required this.onDelete}) : super(key: key);
  final ProductModel model;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: AttributeTextField(initialValue:model.color ,label : Labels.color)
        ),
         Flexible(
          child: AttributeTextField(initialValue:model.size.name ,label : Labels.size)
        ),
         Flexible(
          child: AttributeTextField(initialValue:model.quantity.toString() ,label : Labels.quantity)
        ),
         Flexible(
          child: DefaultButton(label: Labels.remove,onPressed: onDelete,)
        )
      ],
    );
  }
}