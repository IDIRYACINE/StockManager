import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class RecordsSpreadedTable extends StatefulWidget {
  const RecordsSpreadedTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecordsSpreadedTableState();
}

class _RecordsSpreadedTableState extends State<RecordsSpreadedTable> {
  Widget buildRecordGroup(Record record) {
    List<Widget> children = [];

    record.products.forEach((timestampKey, product) {
      RecordProductWrapper wrapper = RecordProductWrapper(record,product, false);

      SelectableRow<RecordProductWrapper> row =
          SelectableRow<RecordProductWrapper>(
        dataCellHelper: (wrapper) =>
            recordProductWrapperCellAdapter(record, product),
        index: int.parse(timestampKey),
        dataModel: wrapper,
      );

      children.add(row);
    });

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [...children]);
  }

  List<String> recordProductWrapperCellAdapter(
      Record record, RecordProduct product) {
    return [
      Utility.formatDateTimeToDisplay(record.date),
      record.payementType,
      product.product,
      record.sellerName,
      product.sellingPrice.toString(),
      product.deposit.toString(),
      product.remainingPayement.toString(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    RecordsLiveDataModel records =
        Provider.of<ControllersProvider>(context, listen: false)
            .recordsLiveModel;

    List<String> recordsTableColumns = [
      Translations.of(context)!.date,
      Translations.of(context)!.type,
      Translations.of(context)!.productName,
      Translations.of(context)!.sellerName,
      Translations.of(context)!.sellingPrice,
      Translations.of(context)!.deposit,
      Translations.of(context)!.remaining,
    ];

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
             SelectableRow(
              dataCellHelper: (v) => recordsTableColumns,
              textColor: Colors.grey,
              index: -1,
              dataModel: 0,
            ),
            Expanded(
              child: ValueListenableBuilder<bool>(
                  valueListenable: records.recordsRefresh,
                  builder: (context, value, child) {
                    return ListView.builder(
                        itemCount: records.recordsCount,
                        itemBuilder: (context, index) {
                          return buildRecordGroup(records.record(index));
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
