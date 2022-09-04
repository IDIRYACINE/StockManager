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



}
