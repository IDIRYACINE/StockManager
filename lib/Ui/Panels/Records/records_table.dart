

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/records_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Generics/lables.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class RecordsTable extends StatefulWidget{
  const RecordsTable({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState()  => _RecordsTableState();

  }

class _RecordsTableState extends State<RecordsTable>{

  List<String> recordToCellsAdapter(Record record) {

    return [record.date,record.payementType ,record.product,record.sellerName,  record.originalPrice.toString(), record.sellingPrice.toString()];
  }
  
  @override
  Widget build(BuildContext context) {
    

    RecordsLiveDataModel records =
        Provider.of<RecordsLiveDataModel>(context,listen: false);
        
  void handleRowClick(Callback<bool> turnOffRow,int rowIndex,VoidCallback updateRow){
   
  }

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.recordsTableColumns,index: -1,)),
        Expanded(
          child: ValueListenableBuilder<bool>(
            valueListenable: records.recordsRefresh,
            builder: (context,value,child) {
              return ListView.builder(
                  itemCount: records.recordsCount,
                  itemBuilder: (context, index) {
                    return SelectableRow(
                      dataCellHelper: () =>
                          recordToCellsAdapter(records.record(index)),
                      onClicked: handleRowClick,index: index,
                    );
                  });
            }
          ),
        ),
      ],
    )));
  }
}
