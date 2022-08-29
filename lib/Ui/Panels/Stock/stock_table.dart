import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/famillies.dart';
import 'package:stock_manager/DataModels/LiveDataModels/products.dart';
import 'package:stock_manager/Types/Generic/special_enums.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_header.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class StockTable extends StatelessWidget {
  const StockTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: ValueListenableBuilder<StockTypes>(
            valueListenable: controller.selectedStockType,
            builder: (context, type, child) {
              return (type == StockTypes.products)
                  ? const _ProductsTable()
                  : const _FamilliesTable();
            }),
      ),
    );
  }
}

class _ProductsTable extends StatelessWidget {

  const _ProductsTable();

  Widget buildHeaders() {
    return Row(
      children: [
        for (int i = 0; i < Titles.stockProductTableColumns.length; i++)
          Expanded(
            child: TableHeader(
              headerTitle: Titles.stockProductTableColumns[i],
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;
    ProductsLiveDataModel products =
        Provider.of<ProductsLiveDataModel>(context);

    return Column(
      children: [
        Flexible(child: buildHeaders()),
        Flexible(
            child: ListView.builder(
                itemCount: products.productsCount,
                itemBuilder: (context, index) {
                  return CustomTableRow(
                    dataCellHelper: () =>
                        controller.productToRowData(products.product(index)),
                  );
                }))
      ],
    );
  }
}


class _FamilliesTable extends StatelessWidget {

  const _FamilliesTable();

  Widget buildHeaders() {
    return Row(
      children: [
        for (int i = 0; i < Titles.stockFamilliesTableColumns.length; i++)
          Expanded(
            child: TableHeader(
              headerTitle: Titles.stockFamilliesTableColumns[i],
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    FamilliesLiveDataModel famillies =
        Provider.of<FamilliesLiveDataModel>(context);

    return Column(
      children: [
        Flexible(child: buildHeaders()),
        Flexible(
            child: ListView.builder(
                itemCount: famillies.productFamilysCount,
                itemBuilder: (context, index) {
                  return CustomTableRow(
                    dataCellHelper: () =>
                        controller.familyToRowData(famillies.productFamily(index)),
                        onClicked: (callback){},
                  );
                }))
      ],
    );
  }
}
