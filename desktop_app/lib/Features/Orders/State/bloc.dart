import 'package:flutter_bloc/flutter_bloc.dart';

import 'orders.dart';

class OrdersBloc extends Bloc<OrderEvent, OrdersState> {
  OrdersBloc._() : super(OrdersState.initial());

  factory OrdersBloc.initial() => OrdersBloc._();
}
