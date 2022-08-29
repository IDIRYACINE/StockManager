

import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';


class CustomTableRow extends StatefulWidget{

  const CustomTableRow({Key? key, this.onClicked, required this.dataCellHelper}) : super(key: key);

  final RowClickCallback? onClicked;

  final DefaultCellHelper dataCellHelper;
  
  @override
  State<StatefulWidget> createState()  =>_CustomTableRowState();

}

class _CustomTableRowState extends State<CustomTableRow>{


  late bool isSelected ;
  late List<String> data;

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

  Color get backgroundColor => isSelected? Colors.blue : Colors.white;
  Color get textColor => isSelected? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
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
              Expanded(child: Text(data[i],style: TextStyle(color: textColor ),))
          ],
        ),
      ));
  }
}
