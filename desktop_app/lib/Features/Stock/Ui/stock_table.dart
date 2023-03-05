import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Features/Stock/Logic/product_family_controller.dart';

import 'package:stock_manager/Features/Stock/State/stock.dart';
import 'package:stock_manager/Features/Stock/Logic/stock_product_controller.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';


class ProductsTable extends StatelessWidget {
  const ProductsTable({super.key});

  List<String> productToCellsAdapter(Product product) {
    return [
      product.barcode.toString(),
      product.name,
      product.productFamily,
      product.buyingPrice.toString(),
      product.totalQuantity.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, StockProductController controller) {
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
    final bloc = BlocProvider.of<StockBloc>(context);
    StockProductController controller = StockProductController(bloc);
    List<String> stockProductTableColumns = [
      Translations.of(context)!.barcode,
      Translations.of(context)!.productName,
      Translations.of(context)!.productFamily,
      Translations.of(context)!.buyingPrice,
      Translations.of(context)!.quantity,
    ];

    return Card(
      child: Column(
        children: [
          Flexible(
              child: SelectableRow(
            dataCellHelper: (value) => stockProductTableColumns,
            index: -1,
            textColor: Colors.grey,
            dataModel: 0,
          )),
          Expanded(
            child: BlocBuilder<StockBloc, StockState>(builder: (context, state) {
              return ListView.builder(
                  itemCount: state.productsCount,
                  itemBuilder: (context, index) {
                    return SelectableRow<Product>(
                      dataCellHelper: (product) => productToCellsAdapter(product),
                      onClick: (detaills) =>
                          handleContextMenu(detaills, controller),
                      contextMenuItems: const [
                        ContextMenuOperation.edit,
                        ContextMenuOperation.remove,
                      ],
                      index: index,
                      dataModel: state.productAt(index),
                    );
                  });
            }),
          ),
        ],
      ),
    );
  }
}

class ProductFamilyTable extends StatelessWidget {
  const ProductFamilyTable({super.key});

  List<String> familyToCellsAdapter(ProductFamily family) {
    return [family.name, family.reference.toString()];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, ProductFamilyController controller) {
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
    final bloc = BlocProvider.of<StockBloc>(context);
    ProductFamilyController controller = ProductFamilyController(bloc);
    
    List<String> stockFamilliesTableColumns = [
      Translations.of(context)!.productFamily,
      Translations.of(context)!.reference,
    ];

    return Card(
      child: Column(
        children: [
          Flexible(
              child: SelectableRow(
            dataCellHelper: (value) => stockFamilliesTableColumns,
            textColor: Colors.grey,
            index: -1,
            dataModel: 0,
          )),
          Expanded(
            child: BlocBuilder<StockBloc, StockState>(builder: (context, state) {
              return ListView.builder(
                  itemCount: state.productFamilysCount,
                  itemBuilder: (context, index) {
                    return SelectableRow<ProductFamily>(
                      dataCellHelper: (family) => familyToCellsAdapter(family),
                      onClick: (detaills) =>
                          handleContextMenu(detaills, controller),
                      index: index,
                      dataModel: state.productFamilyAt(index),
                      contextMenuItems: const [
                        ContextMenuOperation.edit,
                        ContextMenuOperation.remove,
                      ],
                    );
                  });
            }),
          ),
        ],
      ),
    );
  }
}
