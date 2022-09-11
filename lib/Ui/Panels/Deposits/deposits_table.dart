import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/deposit_controller.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
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
      record.sellingPrice.toString(),
      record.deposit.toString(),
      record.remainingPayement.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, DespositController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(context, rowDetaills.data);
        break;
      case ContextMenuOperation.completePayment:
        controller.completePayment(context, rowDetaills.data);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    DespositController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .depositController;

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
                  dataCellHelper: (v) => Titles.depositsTableColumns,
                  index: -1,
                  dataModel: 0,
                )),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                      valueListenable: records.depositRefresh,
                      builder: (context, value, child) {
                        return ListView.builder(
                            itemCount: records.depositsCounts,
                            itemBuilder: (context, index) {
                              return SelectableRow<Record>(
                                contextMenuItems: const [
                                  ContextMenuOperation.remove,
                                  ContextMenuOperation.completePayment,
                                ],
                                dataCellHelper: (record) =>
                                    recordToCellsAdapter(record),
                                onClick: (details) =>
                                    handleContextMenu(details, controller),
                                dataModel: records.depositRecord(index),
                                index: index,
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
