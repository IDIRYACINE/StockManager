import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/utility_wrappers.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/order_products_controller.dart';
import 'package:stock_manager/Application/Controllers/orders_controller.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
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
    OrdersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .ordersController;

    OrdersLiveDataModel orders =
        Provider.of<ControllersProvider>(context, listen: false).ordersLiveModel;

    List<String> ordersTableColumns = [
      Translations.of(context)!.
date,
      Translations.of(context)!.
sellerName,
      Translations.of(context)!.
customer,
      Translations.of(context)!.
productName,
      Translations.of(context)!.
deposit,
      Translations.of(context)!.
remainingPayement,
      Translations.of(context)!.
deliveryCost
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
                  child: ValueListenableBuilder<bool>(
                      valueListenable: orders.refreshOrders,
                      builder: (context, value, child) {
                        return ListView.builder(
                            itemCount: orders.ordersCount,
                            itemBuilder: (context, index) {
                              return SelectableRow<Order>(
                                dataCellHelper: ordersToCellsAdapter,
                                onClick: (detaills) =>
                                    handleContextMenu(detaills, controller),
                                index: index,
                                dataModel: orders.order(index),
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}

class OrderProductsTable extends StatelessWidget {
  const OrderProductsTable({Key? key}) : super(key: key);

  List<String> orderProductsToCellAdapter(OrderProduct orderProduct) {
    return [
      orderProduct.product,
      orderProduct.reference,
      orderProduct.productColor,
      orderProduct.productSize,
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
    OrderProductsController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .orderProductsController;

    OrdersLiveDataModel orders =
        Provider.of<ControllersProvider>(context, listen: false).ordersLiveModel;

    List<String> orderProductsTableColumns = [
      Translations.of(context)!.
productName,
      Translations.of(context)!.
reference,
      Translations.of(context)!.
color,
      Translations.of(context)!.
size,
      Translations.of(context)!.
sellingPrice
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
                  child: ValueListenableBuilder<bool>(
                      valueListenable: orders.refreshOrderProducts,
                      builder: (context, value, child) {
                        final keys =
                            orders.selectedOrder.products.keys.toList();

                        return ListView.builder(
                            itemCount: keys.length,
                            itemBuilder: (context, index) {
                              return SelectableRow<OrderProduct>(
                                dataCellHelper: orderProductsToCellAdapter,
                                onClick: (detaills) =>
                                    handleContextMenu(detaills, controller),
                                index: index,
                                contextMenuItems: const [
                                  ContextMenuOperation.remove
                                ],
                                dataModel: orders.orderProduct(keys[index]),
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
      case ContextMenuOperation.edit:
        ordersController.edit(
            rowDetaills.context, rowDetaills.data.order, rowDetaills.rowIndex);
        break;

      default:
        break;
    }
  }

  List<Widget> buildRows(OrdersLiveDataModel liveModel,
      OrderProductsController controller, OrdersController ordersController) {
    List<Widget> rows = [];

    liveModel.orders.forEach((orderKey, order) {
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
    });

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    OrderProductsController productsController =
        Provider.of<ControllersProvider>(context, listen: false)
            .orderProductsController;

    OrdersController ordersController =
        Provider.of<ControllersProvider>(context, listen: false)
            .ordersController;

    OrdersLiveDataModel orders =
        Provider.of<ControllersProvider>(context, listen: false).ordersLiveModel;

    List<String> ordersTableColumns = [
      Translations.of(context)!.
date,
      Translations.of(context)!.
sellerName,
      Translations.of(context)!.
customer,
      Translations.of(context)!.
productName,
      Translations.of(context)!.
deposit,
      Translations.of(context)!.
remainingPayement,
      Translations.of(context)!.
deliveryCost
    ];

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: ValueListenableBuilder<bool>(
                valueListenable: orders.refreshOrders,
                builder: (context, value, child) {
                  return Column(
                    children: [
                      Flexible(
                          child: SelectableRow(
                        dataCellHelper: (index) => ordersTableColumns,
                        index: -1,
                        textColor: Colors.grey,
                        dataModel: 0,
                      )),
                      ...buildRows(orders, productsController, ordersController)
                    ],
                  );
                })));
  }
}
