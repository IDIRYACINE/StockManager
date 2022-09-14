import 'package:flutter/cupertino.dart';
import 'package:stock_manager/DataModels/LiveDataModels/settings.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Panels/Sellers/sellers.dart';

class SettingsController {
  SettingsController(this.settingsLiveModel);

  final SettingsLiveDataModel settingsLiveModel;

  void changeDisplayLangauge(BuildContext context) {
    
  }

  void changeAppTheme(BuildContext context) {}

  void manageSellers(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      const SellersPanel(),
      width: 1000,
    );
  }

  void displayAbout(BuildContext context) {}
}
