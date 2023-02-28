import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
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
      
      AppNavigator.pushMainAppRoute();

    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: InformativeDialog(
              message: Translations.of(context)!.messageFaultyAuthentication),
        ),
      );
    }
  }
  
}
