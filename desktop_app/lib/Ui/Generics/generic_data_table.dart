
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Generics/lables.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';


class CustomTable<T> extends StatelessWidget{
  
  const CustomTable({Key? key, required this.headers, required this.rowCount, required this.rowBuilder, }) : super(key: key);

  final List<String> headers;
  final int rowCount ;
  final DataRowBuilder rowBuilder;

  @override
  Widget build(BuildContext context) {
return DataTable(
          border:  const TableBorder(
              bottom:  BorderSide( width: 2.0,
            color:AppColors.black,)
            ),
          columns: [
             for(int i = 0; i < headers.length; i++)
                DataColumn(label: TableColumnText( data:headers[i])),
           
          ],
          rows: rowBuilder(),
          
        );
  }
  }

