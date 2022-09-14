import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

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
        Provider.of<ControllersProvider>(context, listen: false).recordsLiveModel;

    List<String> recordsTableColumns = [
      Translations.of(context)!.
date,
      Translations.of(context)!.
type,
      Translations.of(context)!.
productName,
      Translations.of(context)!.
sellerName,
      Translations.of(context)!.
sellingPrice,
      Translations.of(context)!.
deposit,
      Translations.of(context)!.
remaining,
    ];

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  dataCellHelper: (v) => recordsTableColumns,
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
