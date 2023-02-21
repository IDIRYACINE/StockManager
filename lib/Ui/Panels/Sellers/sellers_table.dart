import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Blocs/Sellers/sellers.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/sellers_controller.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SellersTable extends StatelessWidget {
  const SellersTable({Key? key}) : super(key: key);

  List<String> sellerToCellsAdapter(Seller seller) {
    return [seller.name, seller.phone.toString()];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, SellersController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data);
        break;
      case ContextMenuOperation.edit:
        controller.edit(
            rowDetaills.context, rowDetaills.data, rowDetaills.rowIndex);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SellersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .sellersController;


    List<String> sellersTableColumns = [
      Translations.of(context)!.sellerName,
      Translations.of(context)!.phoneNumber,
    ];

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                SelectableRow(
                  textColor: Colors.grey,
                  dataCellHelper: (index) => sellersTableColumns,
                  index: -1,
                  dataModel: 0,
                ),
                Expanded(
                  child: BlocBuilder<SellersBloc,SellersState>(
                      builder: (context, state,) {
                        return ListView.builder(
                            itemCount: state.sellersCount,
                            itemBuilder: (context, index) {
                              return SelectableRow<Seller>(
                                dataCellHelper: sellerToCellsAdapter,
                                onClick: (detaills) =>
                                    handleContextMenu(detaills, controller),
                                contextMenuItems: const [
                                  ContextMenuOperation.edit,
                                  ContextMenuOperation.remove
                                ],
                                index: index,
                                dataModel: state.seller(index),
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
