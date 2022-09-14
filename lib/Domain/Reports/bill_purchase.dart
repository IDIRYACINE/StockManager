import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/adapters_data.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class BillPurchase {
  BillPurchase(this.id, this.records);

  final String id;
  final List<Record> records;

  final List<String> _billHeaders = [
    'produit',
    'quantity',
    'prix',
    'totale',
  ];

  void setUpTranslations(BuildContext context){
    
  }

  void print(BuildContext context) {
    double totals = 0;
    DateTime now = DateTime.now();

    for (Record record in records) {
      totals += record.sellingPrice;
    }

    InvoicePage<Record> invoicePage = InvoicePage(
      paddings: Measures.paddingNormal,
      headers: _billHeaders,
      invoicesTextSize: Measures.h3TextSize,
      titleTextSize: Measures.h3TextSize,
      cellAdapter: Adapter.recordToInvoiceRowData,
      data: records,
      footerData: [
        FooterItem(AppRessources.facebookLogo, AppRessources.facebookLink),
        FooterItem(AppRessources.instgramLogo, AppRessources.instegramLink),
        FooterItem(AppRessources.whatesappLogo, AppRessources.viberPhone),
      ],
      leftInvoiceItems: [
        InvoiceItem("Vendu a", '', pdf.Font.courierBold()),
        InvoiceItem('', records.first.customer ?? ''),
       
      ],
      rightInvoiceItems: [
        InvoiceItem('Facture id', '', pdf.Font.courierBold()),
        InvoiceItem('', id),
        InvoiceItem('Date facture', '', pdf.Font.courierBold()),
        InvoiceItem('', '${now.day}/${now.month}/${now.year}'),
      ],
      invoicePayementAttributes: [
        InvoiceItem(Translations.of(context)!.
total, totals.toString(), pdf.Font.timesBold()),
      ],
      title: PrintableLogo(AppRessources.whiteLogo, width: 150, height: 100),
      subtitle: "Facture d'achat",
      invoiceTableTitle: 'Détails de la commande',
    );

    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();
    appPrinter.addPage(invoicePage.build());
    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }
}
