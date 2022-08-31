import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
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


  List<String> productToCellsAdapter(Product product) {
    return [product.barcode.toString(), product.name,product.reference, product.productFamily, product.originalPrice.toString(),product.totalQuantity.toString(), ];
  }

  @override
  Widget build(BuildContext context) {
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    StockLiveDataModel stock =
        Provider.of<StockLiveDataModel>(context);

  void handleRowClick(Callback<bool> turnOffRow,int rowIndex,VoidCallback updateRow){
    stock.selectedElementIndex = rowIndex;
    controller.registerLastSelectedRow(turnOffRow,rowIndex,updateRow);
    stock.updateSelectedRow = updateRow;
  }

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.stockProductTableColumns, index: -1,)),
        Expanded(
          child: ValueListenableBuilder<bool>(
            valueListenable: stock.refreshProducts,
            builder: (context,value,child) {
              return ListView.builder(
                  itemCount: stock.productsCount,
                  itemBuilder: (context, index) {
                    return SelectableRow(
                      dataCellHelper: () =>
                          productToCellsAdapter(stock.product(index)),
                      onClicked: handleRowClick, index: index,
                    );
                  });
            }
          ),
        ),
      ],
    );
  }
}
class _FamilliesTable extends StatelessWidget {
  const _FamilliesTable();

  List<String> familyToCellsAdapter(ProductFamily family) {
    return [family.name, family.reference];
  }


  @override
  Widget build(BuildContext context) {
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    StockLiveDataModel stock =
        Provider.of<StockLiveDataModel>(context);

  void handleRowClick(Callback<bool> turnOffRow,int rowIndex,VoidCallback updateRow){
    stock.selectedElementIndex = rowIndex;
    controller.registerLastSelectedRow(turnOffRow,rowIndex,updateRow);
    stock.updateSelectedRow = updateRow;
  }

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.stockFamilliesTableColumns,index: -1,)),
        Expanded(
          child: ValueListenableBuilder<bool>(
            valueListenable: stock.refreshProductsFamily,
            builder: (context,value,child) {
              return ListView.builder(
                  itemCount: stock.productFamilysCount,
                  itemBuilder: (context, index) {
                    return SelectableRow(
                      dataCellHelper: () =>
                          familyToCellsAdapter(stock.productFamily(index)),
                      onClicked: handleRowClick,index: index,
                    );
                  });
            }
          ),
        ),
      ],
    );
  }
}
