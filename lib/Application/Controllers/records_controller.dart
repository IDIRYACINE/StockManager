import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/report_records.dart';
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

    SelectorBuilder selector = SelectorBuilder();

    Utility.searchByTodayDate(selector);

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
      final paymentTypesDropdown = PaymentTypes.values
          .map((e) => DropdownAdapters.enumDropDownMenuItemAdapter(e))
          .toList();

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
            values: paymentTypesDropdown)
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
    RecordsReport report = RecordsReport(recordsLiveModel.records);
    report.printRecords(context);
  }
}
