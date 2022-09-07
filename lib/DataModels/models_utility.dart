

import 'models.dart';

class OrderProductReportWrapper {
  final Order order;
  final OrderProduct orderProduct;
  final bool isLast;

  OrderProductReportWrapper(this.order, this.orderProduct, this.isLast);
}

class PrimitiveWrapper<T> {
  T value;
  PrimitiveWrapper(this.value);
}