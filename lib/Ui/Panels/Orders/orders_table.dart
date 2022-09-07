import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/order_products_controller.dart';
import 'package:stock_manager/Application/Controllers/orders_controller.dart';
import 'package:stock_manager/Application/live_models_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Tabels/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    OrdersController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .ordersController;

    OrdersLiveDataModel orders =
        Provider.of<LiveModelProvider>(context, listen: false).ordersLiveModel;

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  clickable: false,
                  dataCellHelper: (index) => Titles.ordersTableColumns,
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
                                onDelete: controller.remove,
                                onEdit: controller.edit,
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

  @override
  Widget build(BuildContext context) {
    OrderProductsController controller =
        Provider.of<ControllersProvider>(context, listen: false)
            .orderProductsController;

    OrdersLiveDataModel orders =
        Provider.of<LiveModelProvider>(context, listen: false).ordersLiveModel;

    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: Measures.small,
            child: Column(
              children: [
                Flexible(
                    child: SelectableRow(
                  clickable: false,
                  dataCellHelper: (index) => Titles.orderProductsTableColumns,
                  index: -1,
                  dataModel: 0,
                )),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                      valueListenable: orders.refreshOrderProducts,
                      builder: (context, value, child) {
                        return ListView.builder(
                            itemCount: orders.selectedOrder.products.length,
                            itemBuilder: (context, index) {
                              return SelectableRow<OrderProduct>(
                                dataCellHelper: orderProductsToCellAdapter,
                                onDelete: controller.remove,
                                onEdit: controller.edit,
                                index: index,
                                contextMenuItems: const [
                                  ContextMenuOperation.remove
                                ],
                                dataModel: orders.orderProduct(index),
                              );
                            });
                      }),
                ),
              ],
            )));
  }
}
