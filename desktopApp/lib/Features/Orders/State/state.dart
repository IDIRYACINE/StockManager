import 'package:stock_manager/DataModels/models.dart';

class OrdersState{
  late List<Order> _orders ;

  OrdersState({required List<Order> orders}){
    _orders = orders;
  }

  factory OrdersState.initial() {
    return OrdersState(orders: []);
  }

  get orders => _orders.map((e) => e.copyWith()).toList();

  get selectedOrder => null;

  Order order(int index) {
    return _orders[index].copyWith();
  }

  orderProduct(key) {}

}