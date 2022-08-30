
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/deposit_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/deposits.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';


class DepositsTable extends StatefulWidget{
  const DepositsTable({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState()  => _DepositsTableState();

  }

class _DepositsTableState extends State<DepositsTable>{

  List<String> recordToCellsAdapter(Record record) {
    return [record.product ,record.sellerName,record.sellingPrice.toString(),record.originalPrice.toString()];
  }

  @override
  Widget build(BuildContext context) {
    DespositController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .depositController;

    DepositsLiveDataModel records =
        Provider.of<DepositsLiveDataModel>(context);

  void handleRowClick(VoidCallback turnOffRow,int rowIndex,UpdateRowCallback updateRow){
    records.selectedIndex = rowIndex;
    controller.registerLastSelectedRow(turnOffRow,rowIndex,updateRow);
    records.updateModifiedElementCallback = updateRow;
  }

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child:Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.depositsTableColumns, index: -1,)),
        Expanded(
          child: ListView.builder(
              itemCount: records.recordsCount,
              itemBuilder: (context, index) {
                return SelectableRow(
                  dataCellHelper: () =>
                      recordToCellsAdapter(records.record(index)),
                  onClicked: handleRowClick, index: index,
                );
              }),
        ),
      ],
    )));
  }
}
