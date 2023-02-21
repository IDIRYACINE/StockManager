import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Deposit/State/deposit.dart';

import 'package:stock_manager/Features/Deposit/Logic/deposit_controller.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DepositsSpreadedTable extends StatefulWidget {
  const DepositsSpreadedTable({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DepositsSpreadedTableState();
}

class _DepositsSpreadedTableState extends State<DepositsSpreadedTable> {
  Widget buildRecordGroup(Record record, DespositController controller) {
    List<Widget> children = [];

    record.products.forEach((timestampKey, product) {
      RecordProductWrapper wrapper = RecordProductWrapper(record,product, false);

      SelectableRow<RecordProductWrapper> row =
          SelectableRow<RecordProductWrapper>(
            onClick: (detaills) => handleContextMenu(detaills,controller),
        contextMenuItems: const [
          ContextMenuOperation.remove,
          ContextMenuOperation.completePayment
        ],
        dataCellHelper: (wrapper) =>
            recordProductWrapperCellAdapter(record, product),
        index: int.parse(timestampKey),
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
      record.customer,
      record.sellerName,
      product.sellingPrice.toString(),
      product.deposit.toString(),
      product.remainingPayement.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, DespositController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.removeDepositProduct(context, rowDetaills.data);
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
    DespositController controller =DespositController();


    List<String> depositsTableColumns = [
      Translations.of(context)!.productName,
      Translations.of(context)!.customer,
      Translations.of(context)!.sellerName,
      Translations.of(context)!.sellingPrice,
      Translations.of(context)!.deposit,
      Translations.of(context)!.remainingPayement,
    ];

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
          children: [
            SelectableRow(
              dataCellHelper: (v) => depositsTableColumns,
              textColor: Colors.grey,
              index: -1,
              dataModel: 0,
            ),
            Expanded(
              child: BlocBuilder<DepositBloc,DepositState>(
                  builder: (context, state) {


                    return ListView.builder(
                        itemCount: state.activeDepositRecord.products.length,
                        itemBuilder: (context, index) {
                          return buildRecordGroup(
                              state.activeDepositRecord, controller);
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
