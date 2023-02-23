import 'package:stock_manager/DataModels/models.dart';

class OrderEvent{}

class FetchOrder extends OrderEvent{}

class AddOrder extends OrderEvent{
  final Order order;
  AddOrder(this.order);
}

class UpdateOrder extends OrderEvent{
  final Order order;
  UpdateOrder(this.order);
}

class DeleteOrder extends OrderEvent{
  final Order order;
  DeleteOrder(this.order);
}

class SearchOrder extends OrderEvent{
  SearchOrder();
}

class SearchQuickOrder extends OrderEvent{
  SearchQuickOrder();
}

class AddOrderProduct extends OrderEvent{
  AddOrderProduct();
}

class UpdateOrderProduct extends OrderEvent{
  UpdateOrderProduct();
}

class DeleteOrderProduct extends OrderEvent{
  DeleteOrderProduct();
}

class UpdateOrderCustomer extends OrderEvent{
  UpdateOrderCustomer();
}
class SearchProduct extends OrderEvent{
  final String searchValue;
  SearchProduct(this.searchValue);
}