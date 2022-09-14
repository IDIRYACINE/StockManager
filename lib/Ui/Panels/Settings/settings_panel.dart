import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Ui/Generics/Cards/settings_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class SettingsPanel extends StatelessWidget {
  const SettingsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Provider.of<ControllersProvider>(context,listen: false).settingsController;

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Translations.of(context).settings,
            style: theme.textTheme.displayMedium,
          ),
          const SizedBox(
            height: Measures.large,
          ),
          SettingCard(
            sectionTitle: "General",
            rowData: [
              SettingRowData(
                title: Translations.of(context).sellers,
                subtitle: 'Manage autherised sellers',
                onClick: () {controller.manageSellers(context);},
              ),
              SettingRowData(
                title: 'Display language',
                subtitle: 'Set the display language',
                onClick: () {
                  controller.changeDisplayLangauge(context);
                },
              ),
             
            ],
          ),
          SettingCard(
            sectionTitle: "About",
            rowData: [
              SettingRowData(
                title: 'Developer Contact',
                subtitle: 'Informaions on the developer',
                onClick: () {controller.displayAbout(context);},
              ),
              SettingRowData(
                title: 'AppVersion',
                subtitle: 'v 0.0.1',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
