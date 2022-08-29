
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Generics/lables.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';


class DepositsTable extends StatefulWidget{
  const DepositsTable({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState()  => _DepositsTableState();

  }

class _DepositsTableState extends State<DepositsTable>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.horizontal,
          child: Card(
        
        elevation: Measures.small,
        child: DataTable(
          border: TableBorder.all(
            width: 2.0,
            color:AppColors.black,
            ),
          columns: [
             for(int i = 0; i < Titles.depositsTableColumns.length; i++)
                DataColumn(label: TableColumnText( data:Titles.depositsTableColumns[i])),
           
          ],
          rows: const [],
          
        ),
      ),
    );
  }
}
