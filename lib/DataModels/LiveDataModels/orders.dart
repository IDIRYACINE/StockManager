import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class OrdersLiveDataModel {
  final Map<int, Order> _loadedOrders = {};
  final List<int> _keys = [];

  Map<int, Order> get orders => _loadedOrders;

  int get ordersCount => _loadedOrders.length;

  Order order(int index) => _loadedOrders[_keys[index]]!;

  int selectedOrderIndex = 0;

  final ValueNotifier<bool> _refreshOrders = ValueNotifier(false);

  ValueListenable<bool> get refreshOrders => _refreshOrders;

  final ValueNotifier<bool> _refreshOrderProducts = ValueNotifier(false);

  ValueListenable<bool> get refreshOrderProducts => _refreshOrderProducts;

  late Order selectedOrder;

  void _toggleRefresh(ValueNotifier<bool> notifier) {
    notifier.value = !notifier.value;
  }

  void addOrder(Order element) {
    _loadedOrders[element.timeStamp] = selectedOrder;
    _keys.add(element.timeStamp);

    _toggleRefresh(_refreshOrders);
  }

  void clearOrders() {
    _loadedOrders.clear();
    _keys.clear();

    _toggleRefresh(_refreshOrders);
  }

  void removeOrder(Order element, int index) {
    _loadedOrders.remove(element.timeStamp);
    _keys.removeAt(index);
    _toggleRefresh(_refreshOrders);
  }

  void setAllOrders(Iterable<Order> elements) {
    _loadedOrders.clear();
    for (Order order in elements) {
      _loadedOrders[order.timeStamp] = order;
      _keys.add(order.timeStamp);
    }
    _toggleRefresh(_refreshOrders);
  }

  void updateOrder(Order order, int index) {
    _loadedOrders[_keys[index]] = order;
    _toggleRefresh(_refreshOrders);
  }

  OrderProduct orderProduct(String id) => selectedOrder.products[id]!;

  void removeOrderProduct(OrderProduct orderProduct) {
    selectedOrder.products.remove(orderProduct.timeStamp);
    selectedOrder.totalPrice -= orderProduct.sellingPrice;
    selectedOrder.remainingPayement -= orderProduct.sellingPrice;

    _toggleRefresh(_refreshOrderProducts);
  }

  void addOrderProduct(OrderProduct orderProduct) {
    selectedOrder.products[orderProduct.timeStamp] = orderProduct;
    selectedOrder.totalPrice += orderProduct.sellingPrice;
    selectedOrder.remainingPayement += orderProduct.sellingPrice;

    _toggleRefresh(_refreshOrderProducts);
    _toggleRefresh(_refreshOrders);
  }

  void updateOrderProduct(OrderProduct orderProduct) {
    selectedOrder.products[orderProduct.timeStamp] = orderProduct;
    _toggleRefresh(_refreshOrderProducts);
  }
}
