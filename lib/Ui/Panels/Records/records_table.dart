import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Application/Blocs/History/history.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
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
              child: BlocBuilder<HistoryBloc,HistoryState>(
                  builder: (context, state) {
                    return ListView.builder(
                        itemCount: state.records.length,
                        itemBuilder: (context, index) {
                          return buildRecordGroup(state.getRecord(index));
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
