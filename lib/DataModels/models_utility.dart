

import 'models.dart';

class OrderProductReportWrapper {
  final Order order;
  final RecordProduct orderProduct;
  final bool isLast;

  OrderProductReportWrapper(this.order, this.orderProduct, this.isLast);
}

class RecordProductWrapper{
  final RecordProduct recordProduct;
  final Record record;

  RecordProductWrapper(this.recordProduct, this.record);
}

class PrimitiveWrapper<T> {
  T value;
  PrimitiveWrapper(this.value);
}