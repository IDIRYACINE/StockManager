import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Application/Utility/utility.dart';

import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';
import 'package:stock_manager/main.dart';

class LoginController {
  final String _harcodedUsername = "Imad", _harcodedPassword = "123";

  String username = '', password = '';

  LoginController();

  void login(BuildContext context) {
    if (username == _harcodedUsername && password == _harcodedPassword) {
      PopupsUtility.displayGenericPopup(context, const Splash());

      ServiceMessage message = _connectionRequest(username, password, context);
      ServicesStore.instance.sendMessage(message);
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

  void _onConnected(BuildContext context, bool isConnected) {
    if (isConnected) {

      _loadData();

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const App()));
    }
  }

  ServiceMessage _connectionRequest(
      String identifier, String password, BuildContext context) {
    Map<ServicesData, String> data = {
      ServicesData.identifier: identifier,
      ServicesData.password: password
    };

    ServiceMessage message = ServiceMessage<bool>(
        data: data,
        event: DatabaseEvent.connect,
        service: AppServices.database,
        hasCallback: true,
        callback: (isConnected) {
          _onConnected(context, isConnected);
        });

    return message;
  }

  void _loadData() {
    ServiceMessage loadSellers = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.loadSellers,
        hasCallback: true,
        callback: (sellers) {
        },
        data: {});

    ServiceMessage loadProducts = ServiceMessage(
        service: AppServices.database,
        hasCallback: true,
        callback: (products) {
          
        },
        event: DatabaseEvent.loadProducts,
        data: {});

    ServiceMessage loadFamillies = ServiceMessage(
        service: AppServices.database,
        hasCallback: true,
        callback: (famillies) {
          
        },
        event: DatabaseEvent.loadProductFamillies,
        data: {});

    SelectorBuilder recordsSelector = SelectorBuilder();
    Utility.searchByTodayDate(recordsSelector);
    ServiceMessage loadRecords = ServiceMessage(
        service: AppServices.database,
        hasCallback: true,
        callback: (records) {
        },
        event: DatabaseEvent.searchPurchaseRecord,
        data: {
          ServicesData.databaseSelector: recordsSelector.map,
        });

    SelectorBuilder ordersSelector = SelectorBuilder();
    Utility.searchByTodayDate(ordersSelector);
    ServiceMessage loadOrders = ServiceMessage(
        service: AppServices.database,
        hasCallback: true,
        callback: (orders) {
        },
        event: DatabaseEvent.loadOrders,
        data: {
          ServicesData.databaseSelector: ordersSelector.map,
        });

    SelectorBuilder statistiquesSelector = SelectorBuilder();
    Utility.searchByCurrentMonth(statistiquesSelector);

    ServiceMessage loadStatistiques = ServiceMessage(
        service: AppServices.database,
        hasCallback: true,
        callback: (stats) {
        },
        event: DatabaseEvent.searchPurchaseStatistiques,
        data: {
          ServicesData.databaseSelector: statistiquesSelector.map,
        });

    Record.generatePurchaseId();
    Record.generateDepositId();

    ServicesStore.instance.sendMessage(loadSellers);
    ServicesStore.instance.sendMessage(loadProducts);
    ServicesStore.instance.sendMessage(loadFamillies);
    ServicesStore.instance.sendMessage(loadRecords);
    ServicesStore.instance.sendMessage(loadOrders);
    ServicesStore.instance.sendMessage(loadStatistiques);
  }
}
