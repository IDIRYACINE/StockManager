import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Editors/ProductEditor/product_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ProductModels extends StatefulWidget {
  const ProductModels(
      {Key? key, required this.product, required this.productEditorMode})
      : super(key: key);

  final Product product;
  final ProductEditorMode productEditorMode;

  @override
  State<StatefulWidget> createState() => _ProductModelsState();
}

class _ProductModelsState extends State<ProductModels> {
  void add() {
    setState(() {
      widget.productEditorMode.addModel();
    });
  }

  void remove(int index) {
    setState(() {
      widget.productEditorMode.removeModel(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
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
        Expanded(
            child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: Measures.small,
          ),
          itemCount: widget.product.models.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductModelRow(
              model: widget.product.models[index],
              index: index,
              onDelete: () {
                remove(index);
              },
              onColorChanged: widget.productEditorMode.setModelColor,
              onQuantityChanged: widget.productEditorMode.setModelQuantity,
              onSizeChanged: widget.productEditorMode.setModelSize,
            );
          },
        ))
      ],
    );
  }
}

class ProductModelRow extends StatelessWidget {
  const ProductModelRow(
      {Key? key,
      required this.model,
      required this.onDelete,
      required this.onColorChanged,
      required this.onQuantityChanged,
      required this.onSizeChanged, required this.index})
      : super(key: key);
  final ProductModel model;
  final int index;
  final VoidCallback onDelete;
  final Callback2<String, int> onColorChanged;
  final Callback2<String, int> onQuantityChanged;
  final Callback2<String, int> onSizeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
            child: AttributeTextField(
          initialValue: model.color,
          label: Labels.color,
          onChanged: (value) {
            if (value != null) {
              onColorChanged(value, index);
            }
          },
        )),
        Flexible(
            child: AttributeTextField(
          initialValue: model.size,
          label: Labels.size,
          onChanged: (value) {
            if (value != null) {
              onSizeChanged(value, index);
            }
          },
        )),
        Flexible(
            child: AttributeTextField(
          initialValue: model.quantity.toString(),
          label: Labels.quantity,
          onChanged: (value) {
            if (value != null) {
              onQuantityChanged(value, index);
            }
          },
        )),
        Flexible(
            child: DefaultButton(
          label: Labels.remove,
          onPressed: onDelete,
        ))
      ],
    );
  }
}
