import 'dart:io';

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart' as pdf;
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

typedef InvoicePayementAdapter<T> = InvoiceItem Function(T item);

class RecordsPage<T> {
  RecordsPage({
    this.headersTextSize = Measures.h3TextSize,
    this.rowsTextSize = Measures.h3TextSize,
    this.invoicesTextSize = Measures.h5TextSize,
    this.titleTextSize = Measures.h2TextSize,
    required this.invoicePayementAttributes,
    required this.endIndex,
    required this.startIndex,
    required this.paddings,
    required this.headers,
    required this.cellAdapter,
    required this.data,
    required this.title,
  });

  final double paddings;

  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final double titleTextSize;
  final double headersTextSize;
  final double rowsTextSize;
  final double invoicesTextSize;
  final List<InvoiceItem> invoicePayementAttributes;
  final int endIndex;
  final int startIndex;
  final String title;

  pw.Page build() {
    return pw.Page(
      build: (context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(title, style: pw.TextStyle(fontSize: titleTextSize)),
                  pw.Text(Utility.formatDateTimeToDisplay(DateTime.now()),
                      style: const pw.TextStyle(fontSize: Measures.medium)),
                ]),
            pw.SizedBox(height: Measures.medium),
            pw.Expanded(
              child: pw.Padding(
                padding: pw.EdgeInsets.all(paddings),
                child: pw.Column(children: [
                  _ReportTable(
                      startIndex: startIndex,
                      endIndex: endIndex,
                      cellAdapter: cellAdapter,
                      data: data,
                      headerTextSize: headersTextSize,
                      headers: headers,
                      rowsTextSize: rowsTextSize),
                  pw.SizedBox(height: Measures.small),
                  _InvoicePayement(invoicePayementAttributes, invoicesTextSize),
                  pw.SizedBox(height: Measures.small),
                ]),
              ),
            )
          ],
        );
      },
    );
  }
}

class InvoicePage<T> {
  InvoicePage(
      {required this.title,
      this.headersTextSize = Measures.h3TextSize,
      this.rowsTextSize = Measures.h3TextSize,
      this.invoicesTextSize = Measures.h5TextSize,
      this.titleTextSize = Measures.h2TextSize,
      this.invoiceItemsSpacing = Measures.small,
      required this.invoicePayementAttributes,
      required this.leftInvoiceItems,
      required this.paddings,
      required this.headers,
      required this.cellAdapter,
      required this.data,
      required this.footerData,
      required this.rightInvoiceItems,
      required this.invoiceTableTitle,
      required this.subtitle});

  final double paddings;
  final double invoiceItemsSpacing;
  final String subtitle;
  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final List<FooterItem> footerData;
  final pw.Widget title;
  final double titleTextSize;
  final double headersTextSize;
  final double rowsTextSize;
  final double invoicesTextSize;
  final String invoiceTableTitle;
  final List<InvoiceItem> leftInvoiceItems;
  final List<InvoiceItem> rightInvoiceItems;
  final List<InvoiceItem> invoicePayementAttributes;

  pw.Page build() {
    return pw.Page(
      build: (context) {
        return pw.Padding(
            padding: pw.EdgeInsets.all(paddings),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                title,
                pw.SizedBox(height: Measures.medium),
                pw.Text(subtitle,
                    style: pw.TextStyle(
                        fontSize: Measures.h3TextSize,
                        fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: Measures.large),
                pw.Expanded(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        _InvoiceWidget(
                            leftAttributes: leftInvoiceItems,
                            rightAttributes: rightInvoiceItems,
                            spacing: invoiceItemsSpacing,
                            invoiceTextSize: invoicesTextSize),
                        pw.SizedBox(height: Measures.medium),
                        pw.Text(invoiceTableTitle,
                            style: pw.TextStyle(
                                fontSize: Measures.h3TextSize,
                                fontWeight: pw.FontWeight.bold)),
                        pw.SizedBox(height: Measures.medium),
                        _InvoiceTable(
                            endIndex: data.length,
                            cellAdapter: cellAdapter,
                            data: data,
                            headers: headers,
                            headerTextSize: headersTextSize,
                            rowsTextSize: rowsTextSize),
                        pw.SizedBox(height: Measures.large),
                        _InvoicePayement(
                            invoicePayementAttributes, invoicesTextSize),
                        pw.SizedBox(height: Measures.large),
                        pw.Divider(),
                        InvoiceFooter(footerData),
                      ]),
                ),
              ],
            ));
      },
    );
  }
}

class _InvoiceWidget extends pw.StatelessWidget {
  _InvoiceWidget(
      {required this.leftAttributes,
      required this.invoiceTextSize,
      required this.spacing,
      required this.rightAttributes});

  final DateTime now = DateTime.now();
  final List<InvoiceItem> leftAttributes;
  final List<InvoiceItem> rightAttributes;
  final double invoiceTextSize;
  final double spacing;

  pw.Widget buildAttributesColumn(List<InvoiceItem> source) {
    return pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          for (InvoiceItem attribute in source)
            pw.Text(
              '${attribute.label}${attribute.value}',
              style: pw.TextStyle(
                fontSize: invoiceTextSize,
                font: attribute.font,
              ),
            ),
          pw.SizedBox(height: spacing),
        ]);
  }

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      mainAxisAlignment: pw.MainAxisAlignment.start,
      children: [
        buildAttributesColumn(leftAttributes),
        pw.Spacer(),
        buildAttributesColumn(rightAttributes),
      ],
    );
  }
}

class _InvoicePayement extends pw.StatelessWidget {
  _InvoicePayement(
    this.rawData,
    this.invoiceTextSize,
  );

  final List<InvoiceItem> rawData;
  final int spacerFlex = 1;
  final double invoiceTextSize;

  List<pw.Widget> buildItems() {
    List<pw.Widget> items = [];

    for (InvoiceItem item in rawData) {
      items.add(pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.end,
        children: [
          pw.Expanded(
            child: pw.Padding(
                padding: const pw.EdgeInsets.only(left: Measures.small),
                child: pw.Text(
                  item.label,
                  style: pw.TextStyle(
                    fontSize: invoiceTextSize,
                    font: item.font,
                  ),
                )),
          ),
          pw.Expanded(
            child: pw.Text(
              item.value,
              style: pw.TextStyle(
                fontSize: invoiceTextSize,
                font: item.font,
              ),
            ),
          ),
        ],
      ));
    }

    return items;
  }

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: buildItems());
  }
}

class FooterItem {
  final String iconAsset;
  final String value;
  final pw.Font? font;

  FooterItem(this.iconAsset, this.value, [this.font]);
}

class InvoiceItem {
  final String label;
  final String value;
  final pw.Font? font;

  InvoiceItem(this.label, this.value, [this.font]);
}

class InvoiceFooter extends pw.StatelessWidget {
  InvoiceFooter(this.data,
      {this.footerTextSize = Measures.h5TextSize,
      this.footerColor = pdf.PdfColors.red900});

  final List<FooterItem> data;
  final double footerTextSize;
  final pdf.PdfColor footerColor;

  List<pw.Widget> buildFooterListing() {
    final pw.TextStyle footerTextStyle = pw.TextStyle(
      fontSize: footerTextSize,
    );

    List<pw.Widget> widgets = [];
    for (FooterItem item in data) {
      final logo = pw.MemoryImage(
        File(item.iconAsset).readAsBytesSync(),
      );

      pw.Widget footerWidget = pw.Row(children: [
        pw.Image(logo, fit: pw.BoxFit.fill),
        pw.Text(item.value, style: footerTextStyle),
      ]);

      widgets.add(footerWidget);
    }
    return widgets;
  }

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
        children: buildFooterListing(),
      );
  }
}

class _InvoiceTable<T> extends pw.StatelessWidget {
  _InvoiceTable({
    required this.headers,
    required this.cellAdapter,
    required this.data,
    this.startIndex = 0,
    required this.endIndex,
    this.headerColor = pdf.PdfColors.white,
    this.rowBorderColor = pdf.PdfColors.grey,
    required this.headerTextSize,
    required this.rowsTextSize,
    this.rowCellPadding = Measures.small,
    this.rowBorderWidth = .5,
  });

  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final int startIndex;
  final int endIndex;
  final double headerTextSize;
  final double rowsTextSize;
  final pdf.PdfColor headerColor;
  final pdf.PdfColor rowBorderColor;
  final double rowCellPadding;
  final double rowBorderWidth;

  @override
  pw.Widget build(pw.Context context) {
    final pw.BoxDecoration headerDecoration = pw.BoxDecoration(
      color: headerColor,
     border : pw.Border(
        bottom: pw.BorderSide(
          color: rowBorderColor,
          width: rowBorderWidth,
        ),)
    );

    final pw.BoxDecoration rowDecoration = pw.BoxDecoration(
      border: pw.Border(
        bottom: pw.BorderSide(
          color: rowBorderColor,
          width: rowBorderWidth,
        ),
      ),
    );

    final pw.EdgeInsets cellPadding = pw.EdgeInsets.all(rowCellPadding);

    final pw.TextStyle headerStyle = pw.TextStyle(
      color: pdf.PdfColors.grey,
      fontSize: headerTextSize,
      fontWeight: pw.FontWeight.bold,
    );

    final pw.TextStyle rowStyle = pw.TextStyle(
      color: pdf.PdfColors.black,
      fontSize: rowsTextSize,
    );

    pw.TableRow buildHeader() {
      return pw.TableRow(
        decoration: headerDecoration,
        children: headers
            .map((header) => pw.Padding(
                padding: cellPadding,
                child: pw.Text(header, style: headerStyle)))
            .toList(),
      );
    }

    pw.TableRow buildRow(int index) {
      List<String> rowData = cellAdapter(data[index]);
      List<pw.Widget> rowWidgets = [];

      for (int i = 0; i < rowData.length; i++) {
        rowWidgets.add(pw.Padding(
            padding: cellPadding, child: pw.Text(rowData[i], style: rowStyle)));
      }

      return pw.TableRow(
        decoration: rowDecoration,
        children: rowWidgets,
      );
    }

    return pw.Table(children: [
      buildHeader(),
      for (int i = startIndex; i < endIndex; i++) buildRow(i)
    ]);
  }
}

class _ReportTable<T> extends pw.StatelessWidget {
  _ReportTable({
    required this.headers,
    required this.cellAdapter,
    required this.data,
    this.startIndex = 0,
    required this.endIndex,
    this.headerColor = pdf.PdfColors.yellow900,
    this.rowBorderColor = pdf.PdfColors.grey,
    required this.headerTextSize,
    required this.rowsTextSize,
    this.rowCellPadding = Measures.small,
    this.rowBorderWidth = .5,
  });

  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final int startIndex;
  final int endIndex;
  final double headerTextSize;
  final double rowsTextSize;
  final pdf.PdfColor headerColor;
  final pdf.PdfColor rowBorderColor;
  final double rowCellPadding;
  final double rowBorderWidth;

  @override
  pw.Widget build(pw.Context context) {
    final pw.BoxDecoration rowDecoration = pw.BoxDecoration(
      border: pw.TableBorder.all(
        color: rowBorderColor,
        width: rowBorderWidth,
      ),
    );

    final pw.EdgeInsets cellPadding = pw.EdgeInsets.all(rowCellPadding);

    final pw.TextStyle headerStyle = pw.TextStyle(
      color: pdf.PdfColors.black,
      fontSize: headerTextSize,
      fontWeight: pw.FontWeight.bold,
    );

    final pw.TextStyle rowStyle = pw.TextStyle(
      color: pdf.PdfColors.black,
      fontSize: rowsTextSize,
    );

    pw.TableRow buildHeader() {
      return pw.TableRow(
        decoration: rowDecoration,
        children: headers
            .map((header) => pw.Padding(
                padding: cellPadding,
                child: pw.Text(header, style: headerStyle)))
            .toList(),
      );
    }

    pw.TableRow buildRow(int index) {
      List<String> rowData = cellAdapter(data[index]);
      List<pw.Widget> rowWidgets = [];

      for (int i = 0; i < rowData.length; i++) {
        rowWidgets.add(pw.Padding(
            padding: cellPadding, child: pw.Text(rowData[i], style: rowStyle)));
      }

      return pw.TableRow(
        decoration: rowDecoration,
        children: rowWidgets,
      );
    }

    return pw.Table(children: [
      buildHeader(),
      for (int i = startIndex; i < endIndex; i++) buildRow(i)
    ]);
  }
}

class PrintableLogo extends pw.StatelessWidget {
  PrintableLogo(this.logoUri, {this.width, this.height});

  final String logoUri;
  final double? height;
  final double? width;

  @override
  pw.Widget build(pw.Context context) {
    final logo = pw.MemoryImage(
      File(logoUri).readAsBytesSync(),
    );

    return pw.Image(logo,
        width: width, height: height, fit: pw.BoxFit.fitWidth);
  }
}
