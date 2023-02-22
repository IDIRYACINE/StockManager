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
  const TableRowText({Key? key, required this.data,  this.color}) : super(key: key);

  final String data;
  final Color? color;
  final double fontSize = Measures.large;

  @override
  Widget build(BuildContext context) {
      return Text(data,
      style:Theme.of(context).textTheme.bodyLarge!.copyWith(color: color), textAlign: TextAlign.center,);

  }

}

class LogoTextButonLabel extends StatelessWidget{
  const LogoTextButonLabel({Key? key,
   required this.label,
    required this.icon, this.textColor, this.iconColor, 
    }) : super(key: key);

  final String label;
  final IconData icon;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(icon,color: iconColor,),
      const SizedBox(width: Measures.small,),
      Text(label,style: Theme.of(context).textTheme.button!.copyWith(
        color: textColor,
      ),),
    ],
  );  }
}