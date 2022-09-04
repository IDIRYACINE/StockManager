import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Application/Controllers/login_controller.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/logo.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class LoginPanel extends StatelessWidget {
  const LoginPanel({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    LoginController loginController = Provider.of<ControllersProvider>(context, listen: false).loginController;
   
    return  ConstrainedBox(
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
                    initialValue: loginController.username, label: Labels.username,
                     onChanged: (value){loginController.username=value!;},),
                 ),
                 
                const SizedBox(height: Measures.medium),
                 Flexible(child: AttributeTextField(
                                      obscureText:true,

                  initialValue: loginController.password, label: Labels.password,onChanged: (value) {loginController.password=value!;},)),
                const SizedBox(height: Measures.medium),
                DefaultButton(
                  label: Labels.login,
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
