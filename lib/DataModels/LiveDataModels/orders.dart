import 'package:flutter/foundation.dart';
import 'package:stock_manager/DataModels/models.dart';

class OrdersLiveDataModel with ChangeNotifier {
  final List<Order> _loadedOrders = [];

  int get ordersCount => _loadedOrders.length;

  Order order(int index) => _loadedOrders[index];

  int selectedOrderIndex = 0;

  VoidCallback? refreshRowCallback;

  final ValueNotifier<bool> _refreshOrders = ValueNotifier(false);

  ValueListenable<bool> get refreshOrders => _refreshOrders;

  final ValueNotifier<bool> _refreshOrderProducts = ValueNotifier(false);

  ValueListenable<bool> get refreshOrderProducts => _refreshOrderProducts;

  Map<String, dynamic> updatedValues = {};

  late Order selectedOrder;

  void _toggleRefresh(ValueNotifier<bool> notifier) {
    notifier.value = !notifier.value;
  }

  void addOrder(Order element) {
    _loadedOrders.add(element);
    _toggleRefresh(_refreshOrders);
  }

  void clearOrders() {
    _loadedOrders.clear();
    _toggleRefresh(_refreshOrders);
  }

  void removeOrder(Order element) {
    _loadedOrders.remove(element);
    _toggleRefresh(_refreshOrders);
  }

  void removeOrderAt(int index) {
    _loadedOrders.removeAt(index);
    _toggleRefresh(_refreshOrders);
  }

  void setAllOrders(Iterable<Order> elements) {
    _loadedOrders.clear();
    _loadedOrders.addAll(elements);
    _toggleRefresh(_refreshOrders);
  }

  void updateOrder(Order order, int index) {
    _loadedOrders[index] = order;
    _toggleRefresh(_refreshOrders);
  }

  OrderProduct orderProduct(int index) =>
      _loadedOrders[selectedOrderIndex].products[index];

  void removeOrderProduct(OrderProduct orderProduct) {
    selectedOrder.products.remove(orderProduct);
    _toggleRefresh(_refreshOrderProducts);
  }

  void addOrderProduct(OrderProduct orderProduct) {
    selectedOrder.products.add(orderProduct);
    _toggleRefresh(_refreshOrderProducts);
  }

  void updateOrderProduct(OrderProduct orderProduct, int index) {
    selectedOrder.products[index] = orderProduct;
    _toggleRefresh(_refreshOrderProducts);
  }
}
