import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';

class BillDeposit {

  BillDeposit(this.deposits, this.id);

  final List<Record> deposits;
  final String id;
  final List<String> _depositHeaders = [
    'produit',
    'prix',
    'versement',
    'reste',
  ];

  static final headers = [
    Labels.productName,
    Labels.sellingPrice,
    Labels.deposit,
    Labels.remainingPayement,
  ];

  void print(BuildContext context) {

    _TotalsWrapper totals = _TotalsWrapper(0,0,0);
    DateTime now = DateTime.now();

    for (Record record in deposits) {
      totals.total += record.sellingPrice;
      totals.totalPaid += record.deposit;
      totals.remainingPayement += record.sellingPrice - record.deposit;

    }

    InvoicePage<Record> invoicePage = InvoicePage(
        paddings: Measures.paddingNormal,
        headers: _depositHeaders,
        invoicesTextSize: Measures.h3TextSize,
        titleTextSize: Measures.h3TextSize,
        cellAdapter: _recordToInvoiceRowData,
        data: deposits,
        footerData: [
          FooterItem(AppRessources.facebookLogo, AppRessources.facebookLink),
          FooterItem(AppRessources.instgramLogo, AppRessources.instegramLink),
          FooterItem(AppRessources.whatesappLogo, AppRessources.viberPhone),
        ],
         leftInvoiceItems: [
        InvoiceItem("Vendu a", '', pdf.Font.courierBold()),
        InvoiceItem('', deposits.first.customer ?? ''),
        InvoiceItem('', deposits.first.phoneNumber.toString()),
        InvoiceItem('', deposits.first.city ?? ''),
        InvoiceItem('', deposits.first.address ?? ''),
      ],
      rightInvoiceItems: [
        InvoiceItem('Facture id', '',pdf.Font.courierBold()),
        InvoiceItem('', id),
        InvoiceItem('Date facture', '',pdf.Font.courierBold()),
        InvoiceItem('', '${now.day}/${now.month}/${now.year}'),

      ],
        invoicePayementAttributes: [
          InvoiceItem('totale', totals.total.toString(),pdf.Font.timesBold()),
          InvoiceItem('totale versement', totals.totalPaid.toString(),pdf.Font.timesBold()),
          InvoiceItem('totale reste', totals.remainingPayement.toString(),pdf.Font.timesBold()),

          
        ],
        title: PrintableLogo(AppRessources.whiteLogo,
         width: 150,
         height:100 
         ), subtitle: 'Facture Achat',
          invoiceTableTitle: 'Détails de la commande', 

        
        );

    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();
    appPrinter.addPage(invoicePage.build());
    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }



  // the order does matter
  static List<String> _recordToInvoiceRowData(Record record) {
    List<String> rawData = [
      record.product,
      record.sellingPrice.toString(),
      record.deposit.toString(),
      record.remainingPayement.toString(),
    ];  
    return rawData;
  }
}

class _TotalsWrapper{
   double total;
   double totalPaid;
   double remainingPayement;

  _TotalsWrapper(this.total, this.totalPaid, this.remainingPayement);

}
