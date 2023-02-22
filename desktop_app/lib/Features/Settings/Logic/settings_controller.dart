import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Features/Settings/Models/settings.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/Ui/Components/Forms/developer_contacts.dart';
import 'package:stock_manager/Ui/Components/Forms/display_language_selector.dart';
import 'package:stock_manager/Ui/Panels/Sellers/sellers.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SettingsController {
  SettingsController(this.settingsLiveModel);

  final SettingsLiveDataModel settingsLiveModel;

  void _onChangeDisplayLanguage(Locale locale) {
    settingsLiveModel.setDisplayLanguage(locale);
  }

  void changeDisplayLangauge(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      DisplayLanguageSelectorForm(onConfirm: _onChangeDisplayLanguage),
    );
  }

  void changeAppTheme(BuildContext context) {}

  void manageSellers(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      const SellersPanel(),
      width: Measures.containerWidthLarge,
    );
  }

  void displayAbout(BuildContext context) {
    PopupsUtility.displayGenericPopup(
      context,
      const DeveloperContacts(),
      width: Measures.containerWidthMeduim,
      height: Measures.containerHeightMeduim,
    );
  }
}
