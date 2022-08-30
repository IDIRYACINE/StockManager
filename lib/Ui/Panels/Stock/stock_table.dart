import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/stock_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/famillies.dart';
import 'package:stock_manager/DataModels/LiveDataModels/products.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/Generic/special_enums.dart';
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

    ProductsLiveDataModel products =
        Provider.of<ProductsLiveDataModel>(context);

  void handleRowClick(VoidCallback turnOffRow,int rowIndex,UpdateRowCallback updateRow){
    products.selectedIndex = rowIndex;
    controller.registerLastSelectedRow(turnOffRow,rowIndex,updateRow);
    products.updateModifiedElementCallback = (){updateRow(null);};
  }

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.stockProductTableColumns, index: -1,)),
        Expanded(
          child: ListView.builder(
              itemCount: products.productsCount,
              itemBuilder: (context, index) {
                return SelectableRow(
                  dataCellHelper: () =>
                      productToCellsAdapter(products.product(index)),
                  onClicked: handleRowClick, index: index,
                );
              }),
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

    FamilliesLiveDataModel famillies =
        Provider.of<FamilliesLiveDataModel>(context);

  void handleRowClick(VoidCallback turnOffRow,int rowIndex,UpdateRowCallback updateRow){
    famillies.selectedIndex = rowIndex;
    controller.registerLastSelectedRow(turnOffRow,rowIndex,updateRow);
    famillies.updateModifiedElementCallback = updateRow;
  }

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
                dataCellHelper: () => Titles.stockFamilliesTableColumns,index: -1,)),
        Expanded(
          child: ListView.builder(
              itemCount: famillies.productFamilysCount,
              itemBuilder: (context, index) {
                return SelectableRow(
                  dataCellHelper: () =>
                      familyToCellsAdapter(famillies.productFamily(index)),
                  onClicked: handleRowClick,index: index,
                );
              }),
        ),
      ],
    );
  }
}
