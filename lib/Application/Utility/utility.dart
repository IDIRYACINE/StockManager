import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Types/i_database.dart';

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
    return DateTime(now.year, now.month, now.day, 23, 59, 59);
  }

  static String formatDateTimeToDisplay(DateTime time) {
    return '${time.year}-${time.month}-${time.day} ${time.hour}:${time.minute}';
  }

  static void searchByTodayDate(SelectorBuilder selector) {
    DateTime now = DateTime.now();

    DateTime start = DateTime(now.year, now.month, now.day, 0, 0, 0);

    selector.gt(RecordFields.date.name, start);
  }

  static void displayToastMessage(
    BuildContext context,
    String message,
  ) {
    FToast toast = FToast();
    toast.init(context);

    toast.showToast(
      child: Text(message),
      gravity: ToastGravity.CENTER,
      toastDuration: const Duration(seconds: 2),
    );
  }

  static int calculatePageCount(int itemsLength, int maxRowsPerPage) {
    int expectedPageCount = (itemsLength / maxRowsPerPage).floor();
    return expectedPageCount < 1 ? 1 : expectedPageCount;
  }
}
