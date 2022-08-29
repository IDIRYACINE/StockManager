

import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Generics/lables.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';


class SelectableRow extends StatefulWidget{

  const SelectableRow({Key? key, this.onClicked, required this.dataCellHelper, this.paddings = Measures.tiny}) : super(key: key);

  final RowClickCallback? onClicked;

  final DefaultCellAdapter dataCellHelper;

  final double paddings;
  
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

  void turnOffRow(){
    setState(() {
      isSelected = false;
    });
  }

  void initColors(ThemeData theme){
    backgroundColor = isSelected ? theme.colorScheme.primary : theme.colorScheme.surface;
    textColor = isSelected ? theme.colorScheme.onPrimary : theme.colorScheme.onSurface;
  }

  @override
  Widget build(BuildContext context) {
    
    initColors(Theme.of(context));

    return GestureDetector(
     
      onTap: (){
       if (widget.onClicked != null){
         setState(() {
          isSelected = true;
          widget.onClicked!(turnOffRow);
         });
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

