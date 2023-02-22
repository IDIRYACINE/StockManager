import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Orders/State/bloc.dart';
import 'package:stock_manager/Features/Orders/State/state.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/utility_wrappers.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Features/Orders/Logic/order_products_controller.dart';
import 'package:stock_manager/Features/Orders/Logic/orders_controller.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class OrdersTable extends StatelessWidget {
  const OrdersTable({Key? key}) : super(key: key);

  List<String> ordersToCellsAdapter(Order order) {
    return [
      Utility.formatDateTimeToDisplay(order.date),
      order.sellerName,
      order.customerName,
      order.deposit.toString(),
      order.remainingPayement.toString(),
      order.deliveryCost.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, OrdersController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(
            rowDetaills.context, rowDetaills.data, rowDetaills.rowIndex);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    OrdersController controller =OrdersController();

    List<String> ordersTableColumns = [
      Translations.of(context)!.date,
      Translations.of(context)!.sellerName,
      Translations.of(context)!.customer,
      Translations.of(context)!.productName,
      Translations.of(context)!.deposit,
      Translations.of(context)!.remainingPayement,
      Translations.of(context)!.deliveryCost
    ];

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
          children: [
            Flexible(
                child: SelectableRow(
              dataCellHelper: (index) => ordersTableColumns,
              index: -1,
              dataModel: 0,
            )),
            Expanded(
              child: BlocBuilder<OrdersBloc, OrdersState>(
                  builder: (context, state) {
                return ListView.builder(
                    itemCount: state.orders.ordersCount,
                    itemBuilder: (context, index) {
                      return SelectableRow<Order>(
                        dataCellHelper: ordersToCellsAdapter,
                        onClick: (detaills) =>
                            handleContextMenu(detaills, controller),
                        index: index,
                        dataModel: state.order(index),
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderProductsTable extends StatelessWidget {
  const OrderProductsTable({Key? key}) : super(key: key);

  List<String> orderProductsToCellAdapter(RecordProduct orderProduct) {
    return [
      orderProduct.product,
      orderProduct.reference,
      orderProduct.color,
      orderProduct.size,
      orderProduct.sellingPrice.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, OrderProductsController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    OrderProductsController controller =OrderProductsController();

    List<String> orderProductsTableColumns = [
      Translations.of(context)!.productName,
      Translations.of(context)!.reference,
      Translations.of(context)!.color,
      Translations.of(context)!.size,
      Translations.of(context)!.sellingPrice
    ];

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  dataCellHelper: (index) => orderProductsTableColumns,
                  index: -1,
                  dataModel: 0,
                )),
                Expanded(
                  child: BlocBuilder<OrdersBloc, OrdersState>(
                      builder: (context, state) {
                    final keys = state.selectedOrder.products.keys.toList();

                    return ListView.builder(
                        itemCount: keys.length,
                        itemBuilder: (context, index) {
                          return SelectableRow<RecordProduct>(
                            dataCellHelper: orderProductsToCellAdapter,
                            onClick: (detaills) =>
                                handleContextMenu(detaills, controller),
                            index: index,
                            contextMenuItems: const [
                              ContextMenuOperation.remove
                            ],
                            dataModel: state.orderProduct(keys[index]),
                          );
                        });
                  }),
                ),
              ],
            )));
  }
}

class OrdersTableSpreaded extends StatelessWidget {
  const OrdersTableSpreaded({Key? key}) : super(key: key);

  List<String> ordersToCellsAdapter(SpreadedOrdersWrapper wrapper) {
    bool isLast = (wrapper.index == wrapper.order.products.length - 1);

    double displayedDeposit = !isLast ? 0 : wrapper.order.deposit;
    double displayedRemainingPayment =
        !isLast ? 0 : wrapper.order.remainingPayement;
    double displayedDeliveryCost = !isLast ? 0 : wrapper.order.deliveryCost;

    return [
      Utility.formatDateTimeToDisplay(wrapper.order.date),
      wrapper.order.sellerName,
      wrapper.order.customerName,
      wrapper.product.product,
      displayedDeposit.toString(),
      displayedRemainingPayment.toString(),
      displayedDeliveryCost.toString(),
    ];
  }

  void handleContextMenu(
      SelectableRowDetaills<SpreadedOrdersWrapper> rowDetaills,
      OrderProductsController controller,
      OrdersController ordersController) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data.product);
        break;

      default:
        break;
    }
  }

  List<Widget> buildRows(List<Order> orders,
      OrderProductsController controller, OrdersController ordersController) {
    List<Widget> rows = [];

    for (Order order in orders) {
      int productIndex = 0;
      order.products.forEach((productKey, product) {
        SpreadedOrdersWrapper wrapper =
            SpreadedOrdersWrapper(order, product, productIndex);

        final row = Flexible(
            child: SelectableRow<SpreadedOrdersWrapper>(
          dataCellHelper: ordersToCellsAdapter,
          onClick: (detaills) =>
              handleContextMenu(detaills, controller, ordersController),
          contextMenuItems: const [
            ContextMenuOperation.remove,
          ],
          index: productIndex,
          dataModel: wrapper,
        ));

        rows.add(row);
        productIndex++;
      });
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    OrderProductsController productsController =OrderProductsController();

    OrdersController ordersController =OrdersController();


    List<String> ordersTableColumns = [
      Translations.of(context)!.date,
      Translations.of(context)!.sellerName,
      Translations.of(context)!.customer,
      Translations.of(context)!.productName,
      Translations.of(context)!.deposit,
      Translations.of(context)!.remainingPayement,
      Translations.of(context)!.deliveryCost
    ];

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: BlocBuilder<OrdersBloc,OrdersState>(
            builder: (context, state) {
              return Column(
                children: [
                  SelectableRow(
                    dataCellHelper: (index) => ordersTableColumns,
                    index: -1,
                    textColor: Colors.grey,
                    dataModel: 0,
                  ),
                  ...buildRows(state.orders, productsController, ordersController)
                ],
              );
            }),
      ),
    );
  }
}
