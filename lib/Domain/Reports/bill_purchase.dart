
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/adapters_data.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';

class BillPurchase {

  final String id;
  final List<Record> records;
  BillPurchase(this.id, this.records);


  void print(BuildContext context) {

    double totals = 0 ;

    for (Record record in records) {
      totals += record.sellingPrice;
    }

    InvoicePage<Record> invoicePage = InvoicePage(
        paddings: Measures.paddingNormal,
        headers: Titles.pruchaseInvoiceHeaders,
        invoicesTextSize: Measures.h3TextSize,
        titleTextSize: Measures.h3TextSize,
        cellAdapter: Adapter.recordToInvoiceRowData,
        data: records,
        footerData: Titles.invoiceFooterHeaders,
        invoiceAttributes: [
          InvoiceItem(Labels.customerName,
              records.first.customer ?? ''),
              InvoiceItem(Labels.invoiceId,
              id),
         
        ],
        invoicePayementAttributes: [
          InvoiceItem(Labels.total, totals.toString(),pdf.Font.timesBold()),
          
        ],
        title: PrintableLogo(AppRessources.whiteLogo,
         width: 150,
         height:100 
         ),

        
        );

    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();
    appPrinter.addPage(invoicePage.build());
    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }
}