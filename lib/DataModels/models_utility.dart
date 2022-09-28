import 'models.dart';
import 'models_stats.dart';

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

class StatsProductChanges {
  final Map<String, StatsProduct> statsProducts;
  double profitChange;
  double netProfitChange;
  int productCounts;
  final String sellerCode;
  final String sellerName;

  StatsProductChanges({required this.netProfitChange,required this.sellerName ,required this.statsProducts, required this.profitChange,required this.productCounts,required this.sellerCode,});
}