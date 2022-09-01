
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

class RecordsController{
   void refresh(BuildContext context) {
    _showLoadingAlert(context);

    void onResult(List<Record> records) {
      Navigator.pop(context);
      Provider.of<RecordsLiveDataModel>(context, listen: false)
          .setAllRecords(records);
    }

    ServiceMessageDataMap data = {};

    ServiceMessage message = ServiceMessage<List<Record>>(
      data: data,
      event: DatabaseEvent.loadPurchaseRecords,
      service: AppServices.database,
      callback: onResult,
      hasCallback: true,
    );

    ServicesStore.instance.sendMessage(message);
  }
  
   void search(BuildContext context) {

    void _onResult(List<Record> records) {
      Provider.of<RecordsLiveDataModel>(context, listen: false)
          .setAllRecords(records);
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
            label: Labels.selectProductFamily,
            identifier: ProductFields.family.name,
            onSelected: onSelect,
            onDeselected: onDeselect,
            adapter: payementTypeDropdownAdapter,
            values:PaymentTypes.values)
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

}