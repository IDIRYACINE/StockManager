import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
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
          builder: (context) => const AlertDialog(
                content:
                    InformativeDialog(message: Messages.faultyAuthentication),
              ));
    }
  }

  void _onConnected(BuildContext context, bool isConnected) {
    if (isConnected) {
      Provider.of<ControllersProvider>(context, listen: false).init(context);
      Provider.of<NavigationStore>(context, listen: false).init();

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
}
