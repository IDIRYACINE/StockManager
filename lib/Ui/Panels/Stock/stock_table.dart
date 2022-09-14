import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/stock_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

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

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, StockController controller) {
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
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    StockLiveDataModel stock =
        Provider.of<ControllersProvider>(context, listen: false).stockLiveModel;

    List<String> stockProductTableColumns = [
      Translations.of(context).barcode,
      Translations.of(context).productName,
      Translations.of(context).reference,
      Translations.of(context).productFamily,
      Translations.of(context).buyingPrice,
      Translations.of(context).quantity,
    ];

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
          dataCellHelper: (value) => stockProductTableColumns,
          index: -1,
          textColor: Colors.grey,
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
                        onClick: (detaills) =>
                            handleContextMenu(detaills, controller),
                        contextMenuItems: const [
                          ContextMenuOperation.edit,
                          ContextMenuOperation.remove,
                        ],
                        index: index,
                        dataModel: stock.productAt(index),
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

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, StockController controller) {
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
    StockController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .stockController;

    StockLiveDataModel stock =
        Provider.of<ControllersProvider>(context, listen: false).stockLiveModel;

    List<String> stockFamilliesTableColumns = [
      Translations.of(context).productFamily,
      Translations.of(context).reference,
    ];

    return Column(
      children: [
        Flexible(
            child: SelectableRow(
          dataCellHelper: (value) => stockFamilliesTableColumns,
          textColor: Colors.grey,
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
                        onClick: (detaills) =>
                            handleContextMenu(detaills, controller),
                        index: index,
                        dataModel: stock.productFamilyAt(index),
                        contextMenuItems: const [
                          ContextMenuOperation.edit,
                          ContextMenuOperation.remove,
                        ],
                      );
                    });
              }),
        ),
      ],
    );
  }
}
