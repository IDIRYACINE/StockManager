
import 'package:stock_manager/DataModels/models.dart';

abstract class Adapter {


  // the order does matter
  static List<String> recordToInvoiceRowData(Record record){
    
    List<String> rawData = [
      record.product,
      record.quantity.toString(),
      record.sellingPrice.toString(),
      (record.quantity * record.sellingPrice).toString(),
    ];

    return rawData;
  }

  static List<String> recordToReportRecordRow(Record record){
    List<String> rawData = [
      record.payementType,
      record.product,
      record.originalPrice.toString(),
      record.sellingPrice.toString(),
      (record.deposit).toString(),
      (record.remainingPayement ).toString(),
      
    ];

    return rawData;
  }

}