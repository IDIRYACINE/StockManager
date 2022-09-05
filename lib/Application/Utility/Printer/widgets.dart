import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart' as pdf;
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

typedef InvoicePayementAdapter<T> = InvoiceItem Function(T item);

class RecordsPage<T> {
  RecordsPage({
    this.titleSize = Measures.h2TextSize,
    required this.invoicePayementAttributes,
    required this.endIndex,
    required this.startIndex,
    required this.paddings,
    required this.headers,
    required this.cellAdapter,
    required this.data,
  });

  final double paddings;

  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final double titleSize;
  final List<InvoiceItem> invoicePayementAttributes;
  final int endIndex;
  final int startIndex;

  pw.Page build() {
    return pw.Page(
      build: (context) {
        return pw.Column(
          children: [
            pw.Text('Logo', style: pw.TextStyle(fontSize: titleSize)),
            pw.Expanded(
              child: pw.Padding(
                padding: pw.EdgeInsets.all(paddings),
                child: pw.Column(children: [
                  _InvoiceTable(
                      startIndex: startIndex,
                      endIndex: endIndex,
                      cellAdapter: cellAdapter,
                      data: data,
                      headers: headers),
                  pw.SizedBox(height: Measures.small),
                  _InvoicePayement(
                    invoicePayementAttributes,
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
    this.titleSize = Measures.h2TextSize,
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
  final double titleSize;
  final List<InvoiceItem> invoiceAttributes;
  final List<InvoiceItem> invoicePayementAttributes;

  pw.Page build() {
    return pw.Page(
      build: (context) {
        return pw.Column(
          children: [
            pw.Text('Logo', style: pw.TextStyle(fontSize: titleSize)),
            pw.Expanded(
              child: pw.Padding(
                padding: pw.EdgeInsets.all(paddings),
                child: pw.Column(children: [
                  _InvoiceWidget(invoiceAttributes),
                  pw.SizedBox(height: Measures.small),
                  _InvoiceTable(
                      endIndex: data.length,
                      cellAdapter: cellAdapter,
                      data: data,
                      headers: headers),
                  pw.SizedBox(height: Measures.small),
                  _InvoicePayement(
                    invoicePayementAttributes,
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
  final DateTime now = DateTime.now();
  final List<InvoiceItem> attributes;

  _InvoiceWidget(this.attributes);

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          for (InvoiceItem attribute in attributes)
            pw.Text(
              '${attribute.label} : ${attribute.value}',
              style: const pw.TextStyle(
                fontSize: Measures.h5TextSize,
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
    this.rawData,
  );

  final List<InvoiceItem> rawData;
  final int spacerFlex = 1;

  List<pw.Widget> buildItems() {
    List<pw.Widget> items = [];

    for (InvoiceItem item in rawData) {
      items.add(pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.end,
        children: [
          pw.Expanded(
            child: pw.Text(
              item.label,
              style: const pw.TextStyle(fontSize: Measures.h3TextSize),
            ),
          ),
          pw.Expanded(
            child: pw.Text(
              item.value,
              style: const pw.TextStyle(fontSize: Measures.h3TextSize),
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

  InvoiceItem(this.label, this.value);
}

class InvoiceFooter extends pw.StatelessWidget {
  InvoiceFooter(this.data);

  final List<String> data;
  final pw.TextStyle footerTextStyle = const pw.TextStyle(
    fontSize: Measures.h3TextSize,
    color: pdf.PdfColors.white,
  );

  List<pw.Widget> buildFooterListing() {
    List<pw.Widget> widgets = [];
    for (String item in data) {
      widgets.add(pw.Text(item, style: footerTextStyle));
    }
    return widgets;
  }

  @override
  pw.Widget build(pw.Context context) {
    return pw.DecoratedBox(
      decoration: const pw.BoxDecoration(
        color: pdf.PdfColors.red900,
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
  });

  final List<String> headers;
  final RowCellAdapter<T> cellAdapter;
  final List<T> data;
  final int startIndex;
  final int endIndex;

  final pw.BoxDecoration? headerDecoration = const pw.BoxDecoration(
    color: pdf.PdfColors.yellow900,
    borderRadius: pw.BorderRadius.all(pw.Radius.circular(2)),
  );

  final pw.BoxDecoration? rowDecoration = const pw.BoxDecoration(
    border: pw.Border(
      bottom: pw.BorderSide(
        color: pdf.PdfColors.grey300,
        width: .5,
      ),
    ),
  );

  final pw.EdgeInsets cellPadding = const pw.EdgeInsets.all(Measures.small);

  final pw.TextStyle headerStyle = pw.TextStyle(
    color: pdf.PdfColors.white,
    fontSize: Measures.h3TextSize,
    fontWeight: pw.FontWeight.bold,
  );

  final pw.TextStyle rowStyle = const pw.TextStyle(
    color: pdf.PdfColors.black,
    fontSize: Measures.h3TextSize,
  );

  pw.TableRow buildHeader() {
    return pw.TableRow(
      decoration: headerDecoration,
      children: headers
          .map((header) => pw.Padding(
              padding: cellPadding, child: pw.Text(header, style: headerStyle)))
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

  @override
  pw.Widget build(pw.Context context) {
    return pw.Table(children: [
      buildHeader(),
      for (int i = startIndex; i < endIndex; i++) buildRow(i),
    ]);
  }
}
