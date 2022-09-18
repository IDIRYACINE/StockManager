

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
  final bool isLast;
  
  RecordProductWrapper( this.record,this.recordProduct,this.isLast);
}

class PrimitiveWrapper<T> {
  T value;
  PrimitiveWrapper(this.value);
}