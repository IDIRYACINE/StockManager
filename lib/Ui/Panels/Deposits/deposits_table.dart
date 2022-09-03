import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/deposit_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DepositsTable extends StatefulWidget {
  const DepositsTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DepositsTableState();
}

class _DepositsTableState extends State<DepositsTable> {
  List<String> recordToCellsAdapter(Record record) {
    return [
      record.product,
      record.customer!,
      record.sellerName,
      record.deposit!.toString(),
      record.remainingPayement.toString(),
      record.sellingPrice.toString(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    DespositController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .depositController;

    RecordsLiveDataModel records =
        Provider.of<RecordsLiveDataModel>(context, listen: false);


    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  dataCellHelper: (v) => Titles.depositsTableColumns,
                  index: -1, dataModel: 0, 
                )),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                      valueListenable: records.depositRefresh,
                      builder: (context, value, child) {
                        return ListView.builder(
                            itemCount: records.depositsCounts,
                            itemBuilder: (context, index) {
                              return SelectableRow<Record>(
                                dataCellHelper: (record) => recordToCellsAdapter(
                                    record),
                                  onDelete : controller.remove,
                      onEdit: controller.edit, dataModel: records.depositRecord(index), index: index,
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
