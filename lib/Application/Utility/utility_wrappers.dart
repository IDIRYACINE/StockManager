import 'package:stock_manager/DataModels/models.dart';

class SpreadedOrdersWrapper {
  SpreadedOrdersWrapper(this.order, this.product);

  final Order order;
  final OrderProduct product;
}
