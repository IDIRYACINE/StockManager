import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_utility.dart';

abstract class Adapter {
  static List<String> orderProductWrapperToReportRow(
      OrderProductReportWrapper product) {
    List<String> rawData = [
      product.order.customerName,
      product.order.city,
      product.orderProduct.product,
      product.orderProduct.productColor,
      product.orderProduct.productSize,
      product.orderProduct.sellingPrice.toString(),
      product.isLast ? product.order.deposit.toString() : "0",
    ];

    return rawData;
  }

  // the order does matter
  static List<String> recordToInvoiceRowData(Record record) {
    List<String> rawData = [
      record.product,
      record.quantity.toString(),
      record.sellingPrice.toString(),
      (record.quantity * record.sellingPrice).toString(),
    ];

    return rawData;
  }

  static List<String> recordToReportRecordRow(Record record) {
    List<String> rawData = [
      record.payementType,
      record.product,
      record.originalPrice.toString(),
      record.sellingPrice.toString(),
      (record.deposit).toString(),
      (record.remainingPayement).toString(),
    ];

    return rawData;
  }
}
