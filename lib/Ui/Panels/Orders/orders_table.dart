import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/Application/Utility/utility_wrappers.dart';
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

  void handleContextMenu(SelectableRowDetaills rowDetaills , OrdersController controller){
    switch(rowDetaills.operation){
      
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data,rowDetaills.rowIndex);
        break;
      case ContextMenuOperation.edit:
        controller.edit(rowDetaills.context, rowDetaills.data,rowDetaills.rowIndex);
        break;

        default : 
        break;
    }}


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
                               onClick: (detaills) => handleContextMenu(detaills,controller),
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


  void handleContextMenu(SelectableRowDetaills rowDetaills , OrderProductsController controller){
    switch(rowDetaills.operation){
      
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data);
        break;

        default : 
        break;
    }}

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
                  dataCellHelper: (index) => Titles.orderProductsTableColumns,
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
                               onClick: (detaills) => handleContextMenu(detaills,controller),
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

  List<String> ordersToCellsAdapter(SpreadedOrdersWrapper order) {
    return [
      Utility.formatDateTimeToDisplay(order.order.date),
      order.order.sellerName,
      order.order.customerName,
      order.order.deposit.toString(),
      order.order.remainingPayement.toString(),
      order.order.deliveryCost.toString(),
    ];
  }

  void handleContextMenu(SelectableRowDetaills rowDetaills , OrderProductsController controller){
    switch(rowDetaills.operation){
      
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data);
        break;
      case ContextMenuOperation.edit:
        controller.edit(rowDetaills.context, rowDetaills.data,rowDetaills.rowIndex);
        break;

        default : 
        break;
    }}

  List<Widget> buildRows(
      OrdersLiveDataModel liveModel , OrderProductsController controller) {
    List<Widget> rows = [];

    liveModel.orders.forEach((orderKey, order) {

      order.products.forEach((productKey, product) { 

        SpreadedOrdersWrapper wrapper = SpreadedOrdersWrapper(order,product);

        final row = Expanded(
            child: SelectableRow<SpreadedOrdersWrapper>(
          dataCellHelper: ordersToCellsAdapter,
         onClick : (detaills) => handleContextMenu(detaills,controller),
          index: 0, // dont need it unless edit is enabled
          dataModel: wrapper,
        ));

        rows.add(row);

      });
      
    });

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    

    OrderProductsController productsController =
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
                  dataCellHelper: (index) => Titles.ordersTableColumns,
                  index: -1,
                  dataModel: 0,
                )),
                ...buildRows(orders,productsController)
              ],
            )));
  }
}
