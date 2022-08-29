
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Panels/Splash/splash.dart';
import 'package:stock_manager/main.dart';

class LoginController{
  
  final Database _database;

  final String _harcodedUsername ="Imad", _harcodedPassword ="123";

  String username ='', password='';

  LoginController(this._database);

  void login(BuildContext context){
    if(username == _harcodedUsername && password == _harcodedPassword){
      PopupsUtility.displayGenericPopup(context, const Splash());
      _database.connect(username,password);

      Provider.of<ControllersProvider>(context, listen: false).init();
      Provider.of<NavigationStore>(context, listen: false).init();

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const App()));

    }
  }

}