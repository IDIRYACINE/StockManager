import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
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
  late List<String> modelKeys;

  @override
  void initState() {
    modelKeys = widget.product.models.keys.toList();
    super.initState();
  }

  void add() {
    setState(() {
      widget.productEditorMode.addModel();
      modelKeys = widget.product.models.keys.toList();
    });
  }

  void remove(String id) {
    setState(() {
      widget.productEditorMode.removeModel(id);
      modelKeys = widget.product.models.keys.toList();
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
                child: const Text(Labels.addModel),
              )),
            ],
          ),
        ),
        Expanded(
            flex: widget.lowerRowFlex,
            child: ListView.builder(
              itemCount: modelKeys.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(top: Measures.small),
                  child: ProductModelRow(
                    model: widget.product.models[modelKeys[index]]!,
                    id: modelKeys[index],
                    onDeleteModel: remove,
                    onColorChanged: widget.productEditorMode.setModelColor,
                    onQuantityChanged:
                        widget.productEditorMode.setModelQuantity,
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
      required this.id,
      required this.onDeleteSize,
      required this.onAddSize})
      : super(key: key);

  final ProductModel model;
  final String id;

  final Callback<String> onDeleteModel;
  final Callback<String> onAddSize;
  final Callback2<String, String> onDeleteSize;
  final Callback2<String, String> onColorChanged;
  final Callback3<String, String, String> onQuantityChanged;
  final Callback3<String, String, String> onSizeChanged;

  @override
  State<ProductModelRow> createState() => _ProductModelRowState();
}

class _ProductModelRowState extends State<ProductModelRow> {
  @override
  void initState() {
    super.initState();
  }

  void onModelSizeChanged(String value, String sizeIndex) {
    widget.onSizeChanged(value, widget.id, sizeIndex);
  }

  void onModelQuantityChanged(String value, String quantityIndex) {
    widget.onQuantityChanged(value, widget.id, quantityIndex);
  }

  void onDeleteModelSize(String sizeIndex) {
    widget.onDeleteSize(widget.id, sizeIndex);
  }

  void onEdit() {
    PopupsUtility.displayGenericPopup(
      context,
      width: 400,
      height: 400,
      ProductModelEditor(
        model: widget.model,
        onDeleteSize: onDeleteModelSize,
        onQuantityChanged: onModelQuantityChanged,
        onSizeChanged: onModelSizeChanged,
        modelId: widget.id,
        onAddSize: widget.onAddSize,
      ),
    );
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
                  widget.onColorChanged(value, widget.id);
                }
              },
            )),
            Flexible(
              child: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  setState(() {
                    onEdit();
                  });
                },
              ),),
               Flexible(
              child: IconButton(
                icon: const  Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    widget.onDeleteModel(widget.id);
                  });
                },
              ),
            ),
          ],
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
      required this.sizeId,
      required this.model,
      required this.onDeleteSize})
      : super(key: key);

  final Callback2<String, String> onQuantityChanged;
  final Callback2<String, String> onSizeChanged;
  final Callback<String> onDeleteSize;
  final String sizeId;
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            child: AttributeTextField(
          initialValue: model.sizes[sizeId]!.size,
          label: Labels.size,
          onChanged: (value) {
            if (value != null) {
              onSizeChanged(value, sizeId);
            }
          },
        )),
        const SizedBox(
          width: Measures.small,
        ),
        Flexible(
          child: AttributeTextField(
            initialValue: model.sizes[sizeId]!.quantity.toString(),
            label: Labels.quantity,
            onChanged: (value) {
              if (value != null) {
                onQuantityChanged(value, sizeId);
              }
            },
          ),
        ),
        const SizedBox(
          width: Measures.small,
        ),
        Flexible(
            child: DefaultButton(
          label: Labels.remove,
          onPressed: () {
            onDeleteSize(sizeId);
          },
        ))
      ],
    );
  }
}

class ProductModelEditor extends StatefulWidget {
  const ProductModelEditor({
    Key? key,
    required this.model,
    required this.onQuantityChanged,
    required this.onSizeChanged,
    required this.onDeleteSize,
    required this.onAddSize,
    required this.modelId,
  }) : super(key: key);

  final ProductModel model;

  final Callback2<String, String> onQuantityChanged;
  final Callback2<String, String> onSizeChanged;
  final Callback<String> onDeleteSize;
  final Callback<String> onAddSize;
  final String modelId;

  @override
  State<StatefulWidget> createState() => _ProductModelEditorState();
}

class _ProductModelEditorState extends State<ProductModelEditor> {
  late List<String> sizesIds = [];

  @override
  void initState() {
    sizesIds = widget.model.sizes.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Labels.sizes,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey),
            ),
            Flexible(
              child: DefaultButton(
                label: Labels.addSize,
                onPressed: () {
                  setState(() {
                    widget.onAddSize(widget.modelId);
                    sizesIds = widget.model.sizes.keys.toList();
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Measures.medium,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: sizesIds.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(top: Measures.small),
                child: _SizeQuantityRow(
                  onQuantityChanged: widget.onQuantityChanged,
                  onSizeChanged: widget.onSizeChanged,
                  sizeId: sizesIds[index],
                  model: widget.model,
                  onDeleteSize: (index) {
                    setState(() {
                      widget.onDeleteSize(index);
                      sizesIds = widget.model.sizes.keys.toList();
                    });
                  },
                ),
              ),
            ),
        ),
        
      ],
    );
  }
}
