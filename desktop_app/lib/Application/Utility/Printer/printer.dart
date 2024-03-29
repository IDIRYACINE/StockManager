import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class AppPrinter {
  late pw.Document doc;
  PdfPageFormat pageFormat = PdfPageFormat.a4;
  late Printer docPrinter;
  late Uint8List preparedDoc;

  Future<void> print(String path) async {
    File file = File(path);
    file.writeAsBytes(await doc.save());
  }

  void createNewDocument() {
    doc = pw.Document();
  }

  void setPageFormat(PdfPageFormat format) {
    pageFormat = format;
  }

  Future<void> prepareDocument() async {
    preparedDoc = await doc.save();
  }

  void setPrinter(Printer printer) {
    docPrinter = printer;
  }

  void addPage(pw.Page page) {
    doc.addPage(page);
  }

  Future<void> displayPreview(BuildContext context) async {
    PopupsUtility.displayGenericPopup(
        context,
        SizedBox(
          width: Measures.containerWidthLarge,
          height: Measures.containerWidthLarge,
          child: PdfPreview(
            build: (pageFormat) => preparedDoc,
            maxPageWidth: 700,
          ),
        ),
        actions: [
          Center(
              child: DefaultButton(
            label: Translations.of(context)!.cancel,
            onPressed: () {
              Navigator.pop(context);
            },
          ))
        ]);
  }
}
