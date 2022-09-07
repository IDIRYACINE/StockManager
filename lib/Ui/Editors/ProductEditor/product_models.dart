import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Editors/ProductEditor/product_mode.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ProductModels extends StatefulWidget {
  const ProductModels(
      {Key? key, required this.product, required this.productEditorMode})
      : super(key: key);

  final Product product;
  final ProductEditorMode productEditorMode;
  final int upperRowFlex = 1;
  final int lowerRowFlex = 4;

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
          flex: widget.upperRowFlex,
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
          flex: widget.lowerRowFlex,
            child: ListView.builder(
          
          itemCount: widget.product.models.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(top:Measures.small),
              child: ProductModelRow(
                model: widget.product.models[index],
                index: index,
                onDeleteModel: () {
                  remove(index);
                },
                onColorChanged: widget.productEditorMode.setModelColor,
                onQuantityChanged: widget.productEditorMode.setModelQuantity,
                onSizeChanged: widget.productEditorMode.setModelSize,
                onDeleteSize: widget.productEditorMode.removeSize,
                onAddSize: widget.productEditorMode.addSize,
              ),
            );
          },
        ))
      ],
    );
  }
}

class ProductModelRow extends StatefulWidget {
  const ProductModelRow(
      {Key? key,
      required this.model,
      required this.onDeleteModel,
      required this.onColorChanged,
      required this.onQuantityChanged,
      required this.onSizeChanged,
      required this.index,
      required this.onDeleteSize,
      required this.onAddSize})
      : super(key: key);

  final ProductModel model;
  final int index;

  final VoidCallback onDeleteModel;
  final Callback<int> onAddSize;
  final Callback2<int, int> onDeleteSize;
  final Callback2<String, int> onColorChanged;
  final Callback3<String, int, int> onQuantityChanged;
  final Callback3<String, int, int> onSizeChanged;

  @override
  State<ProductModelRow> createState() => _ProductModelRowState();
}

class _ProductModelRowState extends State<ProductModelRow> {
  void onModelSizeChanged(String value, int sizeIndex) {
    widget.onSizeChanged(value, widget.index, sizeIndex);
  }

  void onModelQuantityChanged(String value, int quantityIndex) {
    widget.onQuantityChanged(value, widget.index, quantityIndex);
  }

  void onDeleteModelSize(int sizeIndex) {
    widget.onDeleteSize(widget.index, sizeIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
                child: AttributeTextField(
              initialValue: widget.model.color,
              label: Labels.color,
              onChanged: (value) {
                if (value != null) {
                  widget.onColorChanged(value, widget.index);
                }
              },
            )),
            Flexible(
              child: DefaultButton(
                label: Labels.remove,
                onPressed: widget.onDeleteModel,
              ),
            ),
            Flexible(
              child: DefaultButton(
                label: Labels.addSize,
                onPressed: () {
                  setState(() {
                    widget.onAddSize(widget.index);
                  });
                },
              ),
            )
          ],
        ),
        for (int i = 0; i < widget.model.sizes.length; i++)
          Container(
            margin: const EdgeInsets.only(top: Measures.small),
            child: _SizeQuantityRow(
              onQuantityChanged: onModelQuantityChanged,
              onSizeChanged: onModelSizeChanged,
              index: widget.index,
              model: widget.model,
              onDeleteSize: (index) {
                setState(() {
                  onDeleteModelSize(index);
                });
              },
            ),
          ),
      ],
    );
  }
}

class _SizeQuantityRow extends StatelessWidget {
  const _SizeQuantityRow(
      {Key? key,
      required this.onQuantityChanged,
      required this.onSizeChanged,
      required this.index,
      required this.model,
      required this.onDeleteSize})
      : super(key: key);

  final Callback2<String, int> onQuantityChanged;
  final Callback2<String, int> onSizeChanged;
  final Callback<int> onDeleteSize;
  final int index;
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            child: AttributeTextField(
          initialValue: model.sizes[index],
          label: Labels.size,
          onChanged: (value) {
            if (value != null) {
              onSizeChanged(value, index);
            }
          },
        )),
        Flexible(
          child: AttributeTextField(
            initialValue: model.sizesQuantiites[index].toString(),
            label: Labels.quantity,
            onChanged: (value) {
              if (value != null) {
                onQuantityChanged(value, index);
              }
            },
          ),
        ),
        Flexible(
            child: DefaultButton(
          label: Labels.remove,
          onPressed: () {
            onDeleteSize(index);
          },
        ))
      ],
    );
  }
}
