import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/stock_controller.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
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
    return [
      product.barcode.toString(),
      product.name,
      product.reference,
      product.productFamily,
      product.buyingPrice.toString(),
      product.totalQuantity.toString(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    StockLiveDataModel stock =
        Provider.of<LiveModelProvider>(context, listen: false).stockLiveModel;

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
          clickable: false,
          dataCellHelper: (value) => Titles.stockProductTableColumns,
          index: -1,
          dataModel: 0,
        )),
        Expanded(
          child: ValueListenableBuilder<bool>(
              valueListenable: stock.refreshProducts,
              builder: (context, value, child) {
                return ListView.builder(
                    itemCount: stock.productsCount,
                    itemBuilder: (context, index) {
                      return SelectableRow<Product>(
                        dataCellHelper: (product) =>
                            productToCellsAdapter(product),
                        onDelete: controller.remove,
                        onEdit: controller.edit,
                        index: index,
                        dataModel: stock.product(index),
                      );
                    });
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

    StockLiveDataModel stock =
        Provider.of<LiveModelProvider>(context, listen: false).stockLiveModel;

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
          clickable: false,
          dataCellHelper: (value) => Titles.stockFamilliesTableColumns,
          index: -1,
          dataModel: 0,
        )),
        Expanded(
          child: ValueListenableBuilder<bool>(
              valueListenable: stock.refreshProductsFamily,
              builder: (context, value, child) {
                return ListView.builder(
                    itemCount: stock.productFamilysCount,
                    itemBuilder: (context, index) {
                      return SelectableRow<ProductFamily>(
                        dataCellHelper: (family) =>
                            familyToCellsAdapter(family),
                        onDelete: controller.remove,
                        onEdit: controller.edit,
                        index: index,
                        dataModel: stock.productFamily(index),
                      );
                    });
              }),
        ),
      ],
    );
  }
}
