import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Features/SizesAndColors/feature.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class ColorTable extends StatelessWidget {
  const ColorTable({Key? key}) : super(key: key);

  List<String> colorToCellsAdapter(ModelColor color) {
    return [color.colorId.toString(), color.color];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, SizeColorController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.removeColor(rowDetaills.context, rowDetaills.data);
        break;
      case ContextMenuOperation.edit:
        controller.editColor(
            rowDetaills.context, rowDetaills.data, rowDetaills.rowIndex);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SizeColorBloc>(context);
    SizeColorController controller = SizeColorController(bloc);

    List<String> colorTableColumns = [
      Translations.of(context)!.id,
      Translations.of(context)!.color,
    ];

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
          children: [
            SelectableRow(
              textColor: Colors.grey,
              dataCellHelper: (index) => colorTableColumns,
              index: -1,
              dataModel: 0,
            ),
            Expanded(
              child: BlocBuilder<SizeColorBloc, SizeColorState>(builder: (
                context,
                state,
              ) {
                return ListView.builder(
                    itemCount: state.colorsCount,
                    itemBuilder: (context, index) {
                      return SelectableRow<ModelColor>(
                        dataCellHelper: colorToCellsAdapter,
                        onClick: (detaills) =>
                            handleContextMenu(detaills, controller),
                        contextMenuItems: const [
                          ContextMenuOperation.edit,
                          ContextMenuOperation.remove
                        ],
                        index: index,
                        dataModel: state.getColorAtIndex(index),
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }
}


class SizeTable extends StatelessWidget {
  const SizeTable({Key? key}) : super(key: key);

  List<String> sizeToCellsAdapter(ModelSize size) {
    return [size.sizeId.toString(), size.size];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, SizeColorController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.removeSize(rowDetaills.context, rowDetaills.data);
        break;
      case ContextMenuOperation.edit:
        controller.editSize(
            rowDetaills.context, rowDetaills.data, rowDetaills.rowIndex);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SizeColorBloc>(context);
    SizeColorController controller = SizeColorController(bloc);

    List<String> sizesTableColumns = [
      Translations.of(context)!.id,
      Translations.of(context)!.size,
    ];

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
          children: [
            SelectableRow(
              textColor: Colors.grey,
              dataCellHelper: (index) => sizesTableColumns,
              index: -1,
              dataModel: 0,
            ),
            Expanded(
              child: BlocBuilder<SizeColorBloc, SizeColorState>(builder: (
                context,
                state,
              ) {

                return ListView.builder(
                    itemCount: state.sizesCount,
                    itemBuilder: (context, index) {
                      return SelectableRow<ModelSize>(
                        dataCellHelper: sizeToCellsAdapter,
                        onClick: (detaills) =>
                            handleContextMenu(detaills, controller),
                        contextMenuItems: const [
                          ContextMenuOperation.edit,
                          ContextMenuOperation.remove
                        ],
                        index: index,
                        dataModel: state.getSizeAtIndex(index),
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
