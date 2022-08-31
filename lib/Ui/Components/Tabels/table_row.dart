


import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Generics/lables.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';


class SelectableRow extends StatefulWidget{

  const SelectableRow({Key? key, this.onClicked, required this.dataCellHelper, this.paddings = Measures.tiny, required this.index}) : super(key: key);

  final RowClickCallback? onClicked;

  final DefaultCellAdapter dataCellHelper;

  final double paddings;

  final int index;
  
  @override
  State<StatefulWidget> createState()  =>_SelectableRowState();

}

class _SelectableRowState extends State<SelectableRow>{

  late bool isSelected ;
  late List<String> data;
  late Color backgroundColor,textColor;

  @override
  void initState(){
    super.initState();
    isSelected = false;
    data = widget.dataCellHelper();
  }

  void toggleRow(bool state){
    setState(() {
          isSelected = state;
    });
  }

  void initColors(ThemeData theme){
    backgroundColor = isSelected ? theme.colorScheme.primary : theme.colorScheme.onBackground;
    textColor = isSelected ? theme.colorScheme.onPrimary : theme.colorScheme.surface;
  }

  void updateRow(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    
    initColors(Theme.of(context));

    return GestureDetector(
      onTap: (){
       if (widget.onClicked != null){
          isSelected = true;
          widget.onClicked!(toggleRow,widget.index,updateRow);
         
       }
        
      },
      child: Container(
        color: backgroundColor,
        child: Row(
          children: [
            for(int i = 0; i < data.length; i++)
              Expanded(child: Padding(
                padding: EdgeInsets.all(widget.paddings),
                child: TableRowText(color: textColor,data: data[i],),
              ))
          ],
        ),
      ));
  }
}

class CustomTableRow extends StatefulWidget{
  const CustomTableRow({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomTableRowState();
}

class _CustomTableRowState extends State<CustomTableRow> {



  @override
  Widget build(BuildContext context) {
    return 
    Container();
  }}