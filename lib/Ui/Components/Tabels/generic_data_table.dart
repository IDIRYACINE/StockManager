
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_header.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class GenericDataTable<T> extends StatelessWidget{

  const GenericDataTable({Key? key, required this.headers, this.rowsBuilder, required this.data, required this.cellAdapter}) : super(key: key);

  final List<String> headers;
  final List<T> data;
  final DataRowBuilder<T>? rowsBuilder;
  final DataCellAdapter<T> cellAdapter;

  DataRow defaultRowBuilder(T value){
    return DataRow(
      cells: cellAdapter(value),
    );
  }

  List<DataRow> buildRows(){
    List<DataRow> rows = [];

    DataRowBuilder<T> builder = rowsBuilder?? defaultRowBuilder;

    for(T row in data){
      rows.add(builder(row));
    }
    return rows;

  } 

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
             for(int i = 0; i < headers.length; i++)
                DataColumn(label: TableHeader( headerTitle:headers[i])),
           
          ],
          rows: buildRows(),
          
        ),
      ),
    );
  }
}