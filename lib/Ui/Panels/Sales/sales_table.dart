import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sales_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

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

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, SalesController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SalesController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .salesController;

    RecordsLiveDataModel records =
        Provider.of<ControllersProvider>(context, listen: false).recordsLiveModel;

    List<String> salesTableColumns = [
      Translations.of(context)!.
barcode,
      Translations.of(context)!.
productName,
      Translations.of(context)!.
reference,
      Translations.of(context)!.
sellerName,
      Translations.of(context)!.
buyingPrice,
      Translations.of(context)!.
sellingPrice
    ];

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  dataCellHelper: (v) => salesTableColumns,
                  textColor: Colors.grey,
                  index: -1,
                  dataModel: 0,
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
                                onClick: (detaills) =>
                                    handleContextMenu(detaills, controller),
                                index: index,
                                contextMenuItems: const [
                                  ContextMenuOperation.remove
                                ],
                                dataModel: records.purchaseRecord(index),
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
