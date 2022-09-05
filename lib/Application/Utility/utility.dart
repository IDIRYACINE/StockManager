import 'package:stock_manager/DataModels/models.dart';

abstract class Utility {
  static String getDateString() {
    DateTime now = DateTime.now();
    return '${now.year}-${now.month}-${now.day}';
  }

  static int getTimeStamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static DateTime getDate() {
    return DateTime.now();
  }

  static DateTime getTodayEndSearchTime() {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day,23,59,59);
  }

  static String formatDateTimeToDisplay(DateTime time){
    return '${time.year}-${time.month}-${time.day}';
  }

   static RecordReportTotals calculateRecordReportTotals(List<Record> records,[int startIndex = 0 , int? endIndex]){

    int length = ((endIndex == null) || endIndex > records.length)? records.length : endIndex;
   
    double totalProfit = 0;
    double totalNetProfit = 0;
    double totalDeposit = 0;
    double totalRemainingPayement = 0;

    for (int i= startIndex ; i <length ; i++) {   
      Record record = records[i];
      totalProfit += record.sellingPrice;
      totalNetProfit += record.sellingPrice - record.originalPrice;
      totalDeposit += record.deposit;
      totalRemainingPayement += record.remainingPayement;
    }

    totalProfit += totalDeposit;
    totalNetProfit += totalDeposit;

    return RecordReportTotals(totalDeposit, totalRemainingPayement, totalProfit, totalNetProfit);
  }


  static int calculatePageCount(int itemsLength, int maxRowsPerPage){
    int expectedPageCount = (itemsLength / maxRowsPerPage).floor();
    return expectedPageCount < 1 ? 1 : expectedPageCount;
  }


}
