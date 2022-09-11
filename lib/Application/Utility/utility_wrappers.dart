import 'package:stock_manager/DataModels/models.dart';

class SpreadedOrdersWrapper {
  SpreadedOrdersWrapper(this.order, this.product, this.index);

  final Order order;
  final OrderProduct product;
  final int index;
}
