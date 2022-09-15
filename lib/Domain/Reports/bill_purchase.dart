import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class BillPurchase {
  BillPurchase(this.deposit, this.id);

  final Record deposit;
  final String id;

  final List<String> _depositHeaders = [
    'produit',
    'prix',
    'versement',
    'reste',
  ];

  static List<String> headers = [];

  void setup(BuildContext context) {
    headers = [
      Translations.of(context)!.productName,
      Translations.of(context)!.sellingPrice,
      Translations.of(context)!.deposit,
      Translations.of(context)!.remainingPayement,
    ];
  }

  void print(BuildContext context) {
    _TotalsWrapper totals = _TotalsWrapper(deposit.totalPrice, deposit.totalDeposit, deposit.remainingPayement);
    DateTime now = DateTime.now();


    InvoicePage<RecordProduct> invoicePage = InvoicePage(
      paddings: Measures.paddingNormal,
      headers: _depositHeaders,
      invoicesTextSize: Measures.h3TextSize,
      titleTextSize: Measures.h3TextSize,
      cellAdapter: _recordToInvoiceRowData,
      data: deposit.products.values.toList(),
      footerData: [
        FooterItem(AppRessources.facebookLogo, AppRessources.facebookLink),
        FooterItem(AppRessources.instgramLogo, AppRessources.instegramLink),
        FooterItem(AppRessources.whatesappLogo, AppRessources.viberPhone),
      ],
      leftInvoiceItems: [
        InvoiceItem("Vendu a", '', pdf.Font.courierBold()),
        InvoiceItem('', deposit.customer),
        InvoiceItem('', deposit.phoneNumber.toString()),
        InvoiceItem('', deposit.city ?? ''),
        InvoiceItem('', deposit.address ?? ''),
      ],
      rightInvoiceItems: [
        InvoiceItem('Facture id', '', pdf.Font.courierBold()),
        InvoiceItem('', id),
        InvoiceItem('Date facture', '', pdf.Font.courierBold()),
        InvoiceItem('', '${now.day}/${now.month}/${now.year}'),
      ],
      invoicePayementAttributes: [
        InvoiceItem('totale', totals.total.toString(), pdf.Font.timesBold()),
        InvoiceItem('totale versement', totals.totalPaid.toString(),
            pdf.Font.timesBold()),
        InvoiceItem('totale reste', totals.remainingPayement.toString(),
            pdf.Font.timesBold()),
      ],
      title: PrintableLogo(AppRessources.whiteLogo, width: 150, height: 100),
      subtitle: 'Facture Achat',
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
  static List<String> _recordToInvoiceRowData(RecordProduct product) {
    List<String> rawData = [
      product.product,
      product.sellingPrice.toString(),
      product.deposit.toString(),
      product.remainingPayement.toString(),
    ];
    return rawData;
  }
}

class _TotalsWrapper {
  double total;
  double totalPaid;
  double remainingPayement;

  _TotalsWrapper(this.total, this.totalPaid, this.remainingPayement);
}
