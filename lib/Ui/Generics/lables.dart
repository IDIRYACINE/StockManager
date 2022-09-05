import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class TableColumnText extends StatelessWidget{
  const TableColumnText({Key? key, required this.data}) : super(key: key);

  final String data;
  final double fontSize = Measures.large;

  @override
  Widget build(BuildContext context) {
  return Text(data,style: TextStyle(fontSize: fontSize,),);  }
}

class TableRowText extends StatelessWidget{
  const TableRowText({Key? key, required this.data, required this.color}) : super(key: key);

  final String data;
  final Color color;
  final double fontSize = Measures.large;

  @override
  Widget build(BuildContext context) {
      return Text(data,style: TextStyle(fontSize: fontSize,color: color,),textAlign: TextAlign.center,);

  }

}