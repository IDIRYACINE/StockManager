import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/Printer/printer.dart';
import 'package:stock_manager/Application/Utility/Printer/widgets.dart';
import 'package:stock_manager/Application/Utility/adapters_data.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/i_infrastructre.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_search_form.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class RecordsController {
  RecordsController(this.recordsLiveModel);

  RecordsLiveDataModel recordsLiveModel;

  void refresh(BuildContext context) {
    _showLoadingAlert(context);

    void onResult(List<Record> records) {
      recordsLiveModel.setAllRecords(records);
      Navigator.pop(context);
    }

    DateTime today = Utility.getTodayEndSearchTime();

    SelectorBuilder selector =
        SelectorBuilder().lte(RecordFields.date.name, today);

    ServiceMessageDataMap data = {
      ServicesData.databaseSelector: selector.map,
    };

    ServiceMessage message = ServiceMessage<List<Record>>(
      data: data,
      event: DatabaseEvent.searchPurchaseRecord,
      service: AppServices.database,
      callback: onResult,
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
  }

  void search(BuildContext context) {
    void _onResult(List<Record> records) {
      recordsLiveModel.setAllRecords(records);
      Navigator.pop(context);
    }

    void onSearch(Map<String, dynamic> selector) {
      _showLoadingAlert(context);
      Map<ServicesData, dynamic> data = {
        ServicesData.databaseSelector: selector,
      };

      ServiceMessage<List<Record>> message = ServiceMessage(
          service: AppServices.database,
          event: DatabaseEvent.searchPurchaseRecord,
          data: data,
          hasCallback: true,
          callback: _onResult);

      ServicesStore.instance.sendMessage(message);
    }

    List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
        RegisterSearchQueryBuilder onDeselect) {
      return [
        SearchFieldDate(
          startLabel: Labels.startDate,
          endLabel: Labels.endDate,
          identifier: RecordFields.date.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
        ),
        SearchFieldDropDown(
            label: Messages.payementType,
            identifier: RecordFields.paymentType.name,
            onSelected: onSelect,
            onDeselected: onDeselect,
            adapter: payementTypeDropdownAdapter,
            values: PaymentTypes.values)
      ];
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: SearchEditor(
              searchFieldBuilder: buildSearchFields,
              searchCallback: onSearch,
            )));
  }

  void _showLoadingAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(content: Splash()));
  }

  static DropdownMenuItem<PaymentTypes> payementTypeDropdownAdapter(
      PaymentTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  void quickSearch(BuildContext context, Map<String, dynamic> query) {
    _showLoadingAlert(context);

    void _onResult(List<Record> records) {
      recordsLiveModel.setAllRecords(records);
      Navigator.pop(context);
    }

    _showLoadingAlert(context);
    Map<ServicesData, dynamic> data = {
      ServicesData.databaseSelector: query,
    };

    ServiceMessage<List<Record>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseRecord,
        data: data,
        hasCallback: true,
        callback: _onResult);

    ServicesStore.instance.sendMessage(message);
  }

  void printRecords(BuildContext context) {

    AppPrinter appPrinter = AppPrinter();
    appPrinter.createNewDocument();

    List<Record> records = recordsLiveModel.records;

    int maxRowsPerPage = 30;
    int pageCount = Utility.calculatePageCount(records.length, maxRowsPerPage);
    int currentIndex = 0;
    int currentPage = 0;


    while( currentPage < pageCount){
      
      int endIndex = currentIndex + maxRowsPerPage;
      endIndex = endIndex > records.length ? records.length : endIndex;

      RecordReportTotals totals = Utility.calculateRecordReportTotals(records,currentIndex,endIndex) ;

      RecordsPage<Record> recordPage = RecordsPage(
        paddings: Measures.paddingNormal,
        headers: Titles.recordReportHeaders,
        cellAdapter: Adapter.recordToReportRecordRow,
        data: recordsLiveModel.records,
        invoicePayementAttributes: [
          InvoiceItem(Labels.totalDeposit, totals.totalDeposit.toString()),
          InvoiceItem(Labels.profit, totals.totalProfit.toString()),
          InvoiceItem(Labels.remainingPayement, totals.totalRemainingPayement.toString()),
          InvoiceItem(Labels.netProfit, totals.totalNetProfit.toString()),
        ],
        endIndex: currentIndex + maxRowsPerPage , 
        startIndex: currentIndex);

      appPrinter.addPage(recordPage.build());  
      
      currentIndex += maxRowsPerPage;
      currentPage++;
    }


    appPrinter
        .prepareDocument()
        .then((value) => appPrinter.displayPreview(context));
  }

 
}
