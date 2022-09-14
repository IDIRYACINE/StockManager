import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class RecordsReport {
  final List<Record> records;

  RecordsReport(this.records);

  final List<String> _reportHeaders = [
    'Type',
    'Produit',
    'Prix',
    'Versement',
    'Rest',
  ];

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

      _TotalsWrapper totals =
          _calculateReportTotals(records, currentIndex, endIndex);

      RecordsPage<Record> recordPage = RecordsPage(
          paddings: Measures.paddingNormal,
          headers: _reportHeaders,
          headersTextSize: Measures.h5TextSize,
          rowsTextSize: Measures.h5TextSize,
          cellAdapter: _recordToReportRow,
          data: records,
          invoicePayementAttributes: [
            InvoiceItem(Translations.of(context)!.
profit, totals.totalProfit.toString(),
                pdf.Font.timesBold()),
            InvoiceItem('Reste',
                totals.totalRemainingPayement.toString(), pdf.Font.timesBold()),
          ],
          endIndex: endIndex,
          startIndex: currentIndex,
          title: 'Rapport quotidien des ventes');

      appPrinter.addPage(recordPage.build());

      currentIndex += maxRowsPerPage;
      currentPage++;
    }

    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }

  _TotalsWrapper _calculateReportTotals(List<Record> records,
      [int startIndex = 0, int? endIndex]) {
    int length = ((endIndex == null) || endIndex > records.length)
        ? records.length
        : endIndex;

    double totalProfit = 0;

    double totalRemainingPayement = 0;

    for (int i = startIndex; i < length; i++) {
      Record record = records[i];
      totalProfit += record.deposit;
      totalRemainingPayement += record.remainingPayement;
    }

    return _TotalsWrapper(totalProfit, totalRemainingPayement);
  }

  List<String> _recordToReportRow(Record record) {
    List<String> rawData = [
      record.payementType,
      record.product,
      record.sellingPrice.toString(),
      record.deposit.toString(),
      record.remainingPayement.toString(),
    ];

    return rawData;
  }
}

class _TotalsWrapper {
  final double totalProfit;
  final double totalRemainingPayement;

  _TotalsWrapper(
    this.totalProfit,
    this.totalRemainingPayement,
  );
}
