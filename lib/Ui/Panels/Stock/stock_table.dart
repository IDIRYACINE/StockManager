
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_header.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class StockTable extends StatelessWidget{
  const StockTable({Key? key}) : super(key: key);

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
                DataColumn(label: TableHeader( headerTitle:Titles.salesTableColumns[i])),
           
          ],
          rows: const [],
          
        ),
      ),
    );
  }
}