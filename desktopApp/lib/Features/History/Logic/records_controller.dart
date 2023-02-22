import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/History/History/State/history.dart';
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Domain/Reports/report_records.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/search_dialog.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class RecordsController {
  RecordsController();


  void refresh(BuildContext context) {

  }

  void search(BuildContext context) {
    List<Widget> buildSearchFields(RegisterSearchQueryBuilder onSelect,
        RegisterSearchQueryBuilder onDeselect) {
      final paymentTypesDropdown = PaymentTypes.values
          .map((e) => DropdownAdapters.enumDropDownMenuItemAdapter(e))
          .toList();

      return [
        SearchFieldDate(
          startLabel: Translations.of(context)!.startDate,
          endLabel: Translations.of(context)!.endDate,
          identifier: RecordFields.date.name,
          onSelected: onSelect,
          onDeselected: onDeselect,
        ),
        SearchFieldDropDown(
            label: Translations.of(context)!.payementType,
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
          searchCallback: (query) => {},
        ),
      ),
    );
  }

  static DropdownMenuItem<PaymentTypes> payementTypeDropdownAdapter(
      PaymentTypes type) {
    return DropdownMenuItem(
      value: type,
      child: Text(type.name),
    );
  }

  void quickSearch(BuildContext context, Map<String, dynamic> query) {
  }

  void printRecords(BuildContext context) {
    final records= 
        BlocProvider.of<HistoryBloc>(context).state.records;

    RecordsReport report = RecordsReport(records);
    report.printRecords(context);
  }
}
