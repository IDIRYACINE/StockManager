import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/sellers_controller.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SellersTable extends StatelessWidget {
  const SellersTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  

    return const SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: SellersTable()
      ),
    );
  }
}

  List<String> sellerToCellsAdapter(Seller seller) {
    return [seller.name,seller.phone.toString()];
  }

  @override
  Widget build(BuildContext context) {
    SellersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .sellersController;

    SellersLiveDataModel sellers =
        Provider.of<SellersLiveDataModel>(context);

  void handleRowClick(VoidCallback turnOffRow,int rowIndex,UpdateRowCallback updateRow){
    sellers.selectedIndex = rowIndex;
    controller.registerLastSelectedRow(turnOffRow,rowIndex,updateRow);
    sellers.updateRowCallback = updateRow;
  }

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child:Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.sellersTableColumns, index: -1,)),
        Expanded(
          child: ListView.builder(
              itemCount: sellers.sellersCount,
              itemBuilder: (context, index) {
                return SelectableRow(
                  dataCellHelper: () =>
                      sellerToCellsAdapter(sellers.seller(index)),
                  onClicked: handleRowClick, index: index,
                );
              }),
        ),
      ],
    )));
  }