import 'package:stock_manager/Domain/Models/order.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';

class SpreadedOrdersWrapper {
  SpreadedOrdersWrapper(this.order, this.product, this.index);

  final Order order;
  final RecordProduct product;
  final int index;
}
