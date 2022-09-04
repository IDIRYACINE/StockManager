abstract class Utility {
  
  static String getDate() {
    DateTime now = DateTime.now();
    return '${now.year}-${now.month}-${now.day}';
  }

  static int getTimeStamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

}
