import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';

import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class LoginController {
  final String _harcodedUsername = "Imad", _harcodedPassword = "123";

  String username = '', password = '';

  LoginController();

  void login(BuildContext context) {
    if (username == _harcodedUsername && password == _harcodedPassword) {
      PopupsUtility.displayGenericPopup(context, const Splash());
      // TODO : Connect to database

    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: InformativeDialog(
                    message:
                        Translations.of(context)!.messageFaultyAuthentication),
              ));
    }
  }

  // void _onConnected(BuildContext context, bool isConnected) {
  //   if (isConnected) {

  //     _loadData();

  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => const App()));
  //   }
  // }

}

void _loadData() {
  SelectorBuilder recordsSelector = SelectorBuilder();
  Utility.searchByTodayDate(recordsSelector);

  SelectorBuilder ordersSelector = SelectorBuilder();
  Utility.searchByTodayDate(ordersSelector);

  SelectorBuilder statistiquesSelector = SelectorBuilder();
  Utility.searchByCurrentMonth(statistiquesSelector);

  Record.generatePurchaseId();
  Record.generateDepositId();

  // ServicesStore.instance.sendMessage(loadSellers);
  // ServicesStore.instance.sendMessage(loadProducts);
  // ServicesStore.instance.sendMessage(loadFamillies);
  // ServicesStore.instance.sendMessage(loadRecords);
  // ServicesStore.instance.sendMessage(loadOrders);
  // ServicesStore.instance.sendMessage(loadStatistiques);
}
