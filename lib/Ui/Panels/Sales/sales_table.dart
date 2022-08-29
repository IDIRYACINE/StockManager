
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Generics/lables.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SalesTable extends StatefulWidget{
  const SalesTable({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState()  => _SalesTableState();

  }

class _SalesTableState extends State<SalesTable>{

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        
        elevation: Measures.small,
        child: DataTable(
          border: TableBorder.all(
            width: 2.0,
            color:AppColors.black,
            ),
          columns: [
             for(int i = 0; i < Titles.salesTableColumns.length; i++)
                DataColumn(label: TableColumnText( data:Titles.salesTableColumns[i])),
           
          ],
          rows: const [],
          
        ),
      ),
    );
  }
}
