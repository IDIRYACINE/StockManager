
import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class TableHeader extends StatelessWidget{
  const TableHeader({Key? key, required this.headerTitle}) : super(key: key);

  final String headerTitle ;

  @override
  Widget build(BuildContext context) {
    return Text(headerTitle, style: const TextStyle(fontSize: Measures.medium));
  }

}