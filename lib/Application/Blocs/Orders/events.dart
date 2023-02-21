import 'package:stock_manager/DataModels/models.dart';

class OrderEvent{}

class FetchOrderEvent extends OrderEvent{}

class AddOrderEvent extends OrderEvent{
  final Order order;
  AddOrderEvent(this.order);
}

class UpdateOrderEvent extends OrderEvent{
  final Order order;
  UpdateOrderEvent(this.order);
}

class DeleteOrderEvent extends OrderEvent{
  final Order order;
  DeleteOrderEvent(this.order);
}

class SearchOrderEvent extends OrderEvent{
  SearchOrderEvent();
}

class SearchQuickOrderEvent extends OrderEvent{
  SearchQuickOrderEvent();
}

class AddOrderProductEvent extends OrderEvent{
  AddOrderProductEvent();
}

class UpdateOrderProductEvent extends OrderEvent{
  UpdateOrderProductEvent();
}

class DeleteOrderProductEvent extends OrderEvent{
  DeleteOrderProductEvent();
}

class UpdateOrderCustomerEvent extends OrderEvent{
  UpdateOrderCustomerEvent();
}