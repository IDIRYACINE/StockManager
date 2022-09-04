import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sales_controller.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SalesTable extends StatefulWidget {
  const SalesTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SalesTableState();
}

class _SalesTableState extends State<SalesTable> {
  List<String> recordToCellsAdapter(Record record) {
    return [
      record.barcode.toString(),
      record.product,
      record.reference,
      record.sellerName,
      record.originalPrice.toString(),
      record.sellingPrice.toString()
    ];
  }

  @override
  Widget build(BuildContext context) {
    SalesController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .salesController;

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
                  clickable: false,
                  dataCellHelper: (v) => Titles.salesTableColumns,
                  index: -1,
                  dataModel: 0,
                  contextMenuItems: const [ContextMenuOperation.remove],
                )),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                      valueListenable: records.salesRefresh,
                      builder: (context, value, child) {
                        return ListView.builder(
                            itemCount: records.purchasesCount,
                            itemBuilder: (context, index) {
                              return SelectableRow<Record>(
                                dataCellHelper: (record) =>
                                    recordToCellsAdapter(record),
                                onDelete: controller.remove,
                                onEdit: controller.edit,
                                index: index,
                                dataModel: records.purchaseRecord(index),
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
