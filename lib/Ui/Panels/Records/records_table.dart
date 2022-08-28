

import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_header.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class RecordsTable extends StatefulWidget{
  const RecordsTable({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState()  => _RecordsTableState();

  }

class _RecordsTableState extends State<RecordsTable>{

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
             for(int i = 0; i < Titles.recordsTableColumns.length; i++)
                DataColumn(label: TableHeader( headerTitle:Titles.recordsTableColumns[i])),
          ],
          rows: const[],
        ),
      ),
    );
  }
}
