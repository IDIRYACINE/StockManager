import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class RecordsTable extends StatefulWidget {
  const RecordsTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecordsTableState();
}

class _RecordsTableState extends State<RecordsTable> {
  List<String> recordToCellsAdapter(Record record) {
    return [
      Utility.formatDateTimeToDisplay(record.date),
      record.payementType,
      record.product,
      record.sellerName,
      record.sellingPrice.toString(),
      record.deposit.toString(),
      record.remainingPayement.toString(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    RecordsLiveDataModel records =
        Provider.of<LiveModelProvider>(context, listen: false).recordsLiveModel;

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  dataCellHelper: (v) => Titles.recordsTableColumns,
                                    textColor: Colors.grey,

                  index: -1,
                  dataModel: 0,
                )),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                      valueListenable: records.recordsRefresh,
                      builder: (context, value, child) {
                        return ListView.builder(
                            itemCount: records.recordsCount,
                            itemBuilder: (context, index) {
                              return SelectableRow<Record>(
                                dataCellHelper: (record) =>
                                    recordToCellsAdapter(record),
                               
                                index: index,
                                dataModel: records.record(index),
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
