import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart' as pdf;
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
            pw.Text(title, style: pw.TextStyle(fontSize: titleTextSize)),
            pw.SizedBox(height: Measures.medium),
            pw.Expanded(
              child: pw.Padding(
                padding: pw.EdgeInsets.all(paddings),
                child: pw.Column(children: [
                  _InvoiceTable(
                      startIndex: startIndex,
                      endIndex: endIndex,
                      cellAdapter: cellAdapter,
                      data: data,
                      headerTextSize: headersTextSize,
                      headers: headers, rowsTextSize: rowsTextSize),
                  pw.SizedBox(height: Measures.small),
                  _InvoicePayement(
                    invoicePayementAttributes,invoicesTextSize
                  ),
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
  InvoicePage({
    required this.title,
      this.headersTextSize = Measures.h3TextSize,
    this.rowsTextSize = Measures.h3TextSize,
    this.invoicesTextSize = Measures.h5TextSize,
    this.titleTextSize = Measures.h2TextSize,
    required this.invoicePayementAttributes,
    required this.invoiceAttributes,
    required this.paddings,
    required this.headers,
    required this.cellAdapter,
    required this.data,
    required this.footerData,
  });

  final double paddings;

  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final List<String> footerData;
  final String title;
  final double titleTextSize;
  final double headersTextSize;
  final double rowsTextSize;
  final double invoicesTextSize;
  final List<InvoiceItem> invoiceAttributes;
  final List<InvoiceItem> invoicePayementAttributes;

  pw.Page build() {
    return pw.Page(
      build: (context) {
        return pw.Column(
          children: [
            pw.Text(title, style: pw.TextStyle(fontSize: titleTextSize)),
            pw.SizedBox(height: Measures.medium),
            pw.Expanded(
              child: pw.Padding(
                padding: pw.EdgeInsets.all(paddings),
                child: pw.Column(children: [
                  _InvoiceWidget(invoiceAttributes,invoicesTextSize),
                  pw.SizedBox(height: Measures.medium),
                  _InvoiceTable(
                      endIndex: data.length,
                      cellAdapter: cellAdapter,
                      data: data,
                      headers: headers, headerTextSize: headersTextSize, rowsTextSize: rowsTextSize),
                  pw.SizedBox(height: Measures.medium),
                  _InvoicePayement(
                    invoicePayementAttributes,invoicesTextSize
                  ),
                  pw.SizedBox(height: Measures.small),
                  InvoiceFooter(footerData),
                ]),
              ),
            )
          ],
        );
      },
    );
  }
}

class _InvoiceWidget extends pw.StatelessWidget {
  _InvoiceWidget(this.attributes, this.invoiceTextSize);

  final DateTime now = DateTime.now();
  final List<InvoiceItem> attributes;
  final double invoiceTextSize;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          for (InvoiceItem attribute in attributes)
            pw.Text(
              '${attribute.label} : ${attribute.value}',
              style: pw.TextStyle(
                fontSize: invoiceTextSize,
              ),
            ),
        ]),
        pw.Column(mainAxisAlignment: pw.MainAxisAlignment.start, children: [
          pw.Text('${Labels.date} : ${now.day}/${now.month}/${now.year}'),
        ]),
      ],
    );
  }
}

class _InvoicePayement extends pw.StatelessWidget {
  _InvoicePayement(
    this.rawData, this.invoiceTextSize,
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
            child: pw.Text(
              item.label,
              style:
                  pw.TextStyle(fontSize: invoiceTextSize, font: item.font,),
            ),
          ),
          pw.Expanded(
            child: pw.Text(
              item.value,
              style: pw.TextStyle(fontSize: invoiceTextSize, font: item.font,),
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

class InvoiceItem {
  final String label;
  final String value;
  final pw.Font? font;

  InvoiceItem(this.label, this.value, [this.font]);
}

class InvoiceFooter extends pw.StatelessWidget {
  InvoiceFooter(this.data,
      {this.footerTextSize = Measures.h3TextSize,
      this.footerColor = pdf.PdfColors.red900});

  final List<String> data;
  final double footerTextSize;
  final pdf.PdfColor footerColor;

  List<pw.Widget> buildFooterListing() {
    final pw.TextStyle footerTextStyle = pw.TextStyle(
      fontSize: footerTextSize,
      color: pdf.PdfColors.white,
    );

    List<pw.Widget> widgets = [];
    for (String item in data) {
      widgets.add(pw.Text(item, style: footerTextStyle));
    }
    return widgets;
  }

  @override
  pw.Widget build(pw.Context context) {
    return pw.DecoratedBox(
      decoration: pw.BoxDecoration(
        color: footerColor,
      ),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
        children: buildFooterListing(),
      ),
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
    this.headerColor = pdf.PdfColors.yellow900,
    this.rowBorderColor = pdf.PdfColors.grey,
    required this.headerTextSize ,
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
      borderRadius: const pw.BorderRadius.all(pw.Radius.circular(2)),
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
      color: pdf.PdfColors.white,
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
