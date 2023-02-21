import 'package:flutter/material.dart';
import 'package:stock_manager/Features/Login/Logic/login_controller.dart';
import 'package:stock_manager/Ui/Generics/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/logo.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';
import 'package:stock_manager/Ui/Generics/default_button.dart';

class LoginPanel extends StatelessWidget {
  const LoginPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = LoginController();

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: Measures.cardWidthLarge),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Logo(),
                const SizedBox(height: Measures.large),
                Flexible(
                  child: AttributeTextField(
                    initialValue: loginController.username,
                    label: Translations.of(context)!.
username,
                    onChanged: (value) {
                      loginController.username = value!;
                    },
                  ),
                ),
                const SizedBox(height: Measures.medium),
                Flexible(
                    child: AttributeTextField(
                  obscureText: true,
                  initialValue: loginController.password,
                  label: Translations.of(context)!.
password,
                  onChanged: (value) {
                    loginController.password = value!;
                  },
                )),
                const SizedBox(height: Measures.medium),
                DefaultButton(
                  label: Translations.of(context)!.
login,
                  onPressed: () {
                    loginController.login(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
