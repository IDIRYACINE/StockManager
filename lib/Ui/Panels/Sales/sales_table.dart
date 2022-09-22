import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sales_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SalesSpreadedTable extends StatefulWidget {
  const SalesSpreadedTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SalesSpreadedTableState();
}

class _SalesSpreadedTableState extends State<SalesSpreadedTable> {
  Widget buildRecordGroup(Record record , SalesController controller) {
    List<Widget> children = [];

    record.products.forEach((timestampKey, product) {
      RecordProductWrapper wrapper = RecordProductWrapper(record,product, false);

      SelectableRow<RecordProductWrapper> row =
          SelectableRow<RecordProductWrapper>(
        dataCellHelper: (wrapper) =>
            recordProductWrapperCellAdapter(record, product),
        index: int.parse(timestampKey),
        contextMenuItems: const [ContextMenuOperation.remove],
        onClick: (detaills) => handleContextMenu(detaills,controller),
        dataModel: wrapper,
      );

      children.add(row);
    });

    return Column(children: [...children]);
  }

  List<String> recordProductWrapperCellAdapter(
      Record record, RecordProduct product) {   
    return [
      product.product,
      product.reference,
      record.sellerName,
      product.sellingPrice.toString(),
      product.deposit.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills<RecordProductWrapper> rowDetaills, SalesController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.removeSaleProduct(rowDetaills.context, rowDetaills.data);
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
        Provider.of<ControllersProvider>(context, listen: false)
            .recordsLiveModel;

    List<String> salesTableColumns = [
      Translations.of(context)!.productName,
      Translations.of(context)!.reference,
      Translations.of(context)!.sellerName,
      Translations.of(context)!.sellingPrice,
      Translations.of(context)!.deposit
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
              dataCellHelper: (v) => salesTableColumns,
              textColor: Colors.grey,
              index: -1,
              dataModel: 0,
            ),
            Expanded(
              child: ValueListenableBuilder<bool>(
                  valueListenable: records.salesRefresh,
                  builder: (context, value, child) {
                    return ListView.builder(
                        itemCount: records.purchasesCount,
                        itemBuilder: (context, index) {
                          return buildRecordGroup(records.purchaseRecord(index),controller);
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
