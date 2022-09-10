
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/adapters_data.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class RecordsReport {

  final List<Record> records ;

  RecordsReport(this.records);

  void printRecords(BuildContext context) {
    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();

    int maxRowsPerPage = Measures.recordsMaxRowsPrint;
    int pageCount = Utility.calculatePageCount(records.length, maxRowsPerPage);
    int currentIndex = 0;
    int currentPage = 0;

    while (currentPage < pageCount) {
      int endIndex = currentIndex + maxRowsPerPage;
      endIndex = endIndex > records.length ? records.length : endIndex;

      RecordReportTotals totals =
          Utility.calculateRecordReportTotals(records, currentIndex, endIndex);

      RecordsPage<Record> recordPage = RecordsPage(
          paddings: Measures.paddingNormal,
          headers: Titles.recordReportHeaders,
          headersTextSize: Measures.h5TextSize,
          rowsTextSize: Measures.h5TextSize,
          cellAdapter: Adapter.recordToReportRecordRow,
          data: records,
          invoicePayementAttributes: [
            InvoiceItem(Labels.totalDeposit, totals.totalDeposit.toString()),
            InvoiceItem(Labels.profit, totals.totalProfit.toString()),
            InvoiceItem(Labels.remainingPayement,
                totals.totalRemainingPayement.toString()),
            InvoiceItem(
              Labels.netProfit,
              totals.totalNetProfit.toString(),
              pdf.Font.timesBold(),
            ),
          ],
          endIndex: endIndex,
          startIndex: currentIndex,
          title: Labels.dailySalesReport);

      appPrinter.addPage(recordPage.build());

      currentIndex += maxRowsPerPage;
      currentPage++;
    }

    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }
}