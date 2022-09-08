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
      this.clickable = true,
      this.onEdit,
      this.onDelete,
      this.contextMenuItems})
      : super(key: key);

  final RowCellAdapter<T> dataCellHelper;

  final double paddings;

  final int index;

  final T dataModel;

  final bool clickable;

  final Callback3<BuildContext,T, int>? onEdit;

  final Callback2<BuildContext,T>? onDelete;

  final List<ContextMenuOperation>? contextMenuItems;

  @override
  State<SelectableRow> createState() => _SelectableRowState<T>();
}

class _SelectableRowState<T> extends State<SelectableRow<T>> {


  void onRowClicked(BuildContext context, T record, int rowIndex,TapDownDetails details) {
     void _onContextMenuSelected(ContextMenuOperation? operation) {

      switch (operation) {
        case ContextMenuOperation.edit:
          widget.onEdit?.call(context,record,rowIndex);
          break;
        case ContextMenuOperation.remove:
          widget.onDelete?.call(context,record);
          break;
          default :
          break;
      }
    }

    RelativeRect position = RelativeRect.fromLTRB(
      details.globalPosition.dx, 
      details.globalPosition.dy,
       details.globalPosition.dx,
       details.globalPosition.dy);
    
    PopupsUtility.dispalyContextMenu<ContextMenuOperation>(
        context: context,
        items: PopupsUtility.buildEnumPopupItem(widget.contextMenuItems??ContextMenuOperation.values),
        position: position,
        ).then((value) => _onContextMenuSelected(value));
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.dataCellHelper(widget.dataModel);

    return GestureDetector(
      onTapDown:(details){
         if (widget.clickable) {
            onRowClicked(context, widget.dataModel, widget.index,details);
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
                    ),
                  ))
              ],
            ),
            const Divider(
            )
          ],
        ));
  }
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
