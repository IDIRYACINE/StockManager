import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Generics/lables.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SelectableRow<T> extends StatefulWidget {
  const SelectableRow(
      {Key? key,
      required this.dataCellHelper,
      this.paddings = Measures.tiny,
      required this.index,
      required this.dataModel,
      this.contextMenuItems,
      this.textColor,
      this.onClick})
      : assert(
         ( onClick != null && contextMenuItems != null )||
            (  onClick == null && contextMenuItems == null),
        ),
        super(key: key);

  final RowCellAdapter<T> dataCellHelper;

  final double paddings;

  final Color? textColor;

  final int index;

  final T dataModel;

  final Callback<SelectableRowDetaills<T>>? onClick;

  final List<ContextMenuOperation>? contextMenuItems;

  @override
  State<SelectableRow> createState() => _SelectableRowState<T>();
}

class _SelectableRowState<T> extends State<SelectableRow<T>> {
  void onRowClicked(
      BuildContext context, T data, int rowIndex, TapDownDetails details) {
    void onContextMenuSelected(ContextMenuOperation? operation) {
      SelectableRowDetaills<T> rowDetaills = SelectableRowDetaills<T>(
        context: context,
        data: data,
          rowIndex: rowIndex, 
           operation: operation);

      widget.onClick?.call(rowDetaills);
    }

    RelativeRect position = RelativeRect.fromLTRB(
        details.globalPosition.dx,
        details.globalPosition.dy,
        details.globalPosition.dx,
        details.globalPosition.dy);

    PopupsUtility.dispalyContextMenu<ContextMenuOperation>(
      context: context,
      items: PopupsUtility.buildEnumPopupItem(
          widget.contextMenuItems ?? ContextMenuOperation.values),
      position: position,
    ).then((value) => onContextMenuSelected(value));
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.dataCellHelper(widget.dataModel);

    return GestureDetector(
        onTapDown: (details) {
          if (widget.onClick != null) {
            onRowClicked(context, widget.dataModel, widget.index, details);
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                for (int i = 0; i < data.length; i++)
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(widget.paddings),
                    child: TableRowText(
                      data: data[i],
                      color: widget.textColor,
                    ),
                  ))
              ],
            ),
            const Divider()
          ],
        ));
  }
}

class SelectableRowDetaills<T> {
  final int rowIndex;
  final T data;
  final ContextMenuOperation? operation;
  final BuildContext context;

  SelectableRowDetaills(
      {required this.rowIndex,
      required,
      required this.data,
       this.operation,
      required this.context});
}

class CustomTableRow extends StatefulWidget {
  const CustomTableRow({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomTableRowState();
}

class _CustomTableRowState extends State<CustomTableRow> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
