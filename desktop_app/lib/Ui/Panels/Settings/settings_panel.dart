import 'package:flutter/material.dart';
import 'package:stock_manager/Features/Settings/settings_feature.dart';
import 'package:stock_manager/Ui/Generics/Cards/settings_card.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SettingsPanel extends StatelessWidget {
  const SettingsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = SettingsController(SettingsLiveDataModel.instance());

    return Padding(
      padding: const EdgeInsets.all(Measures.paddingLarge),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              Translations.of(context)!.settings,
              style: theme.textTheme.displayMedium,
            ),
            const SizedBox(
              height: Measures.large,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SettingCard(
                      sectionTitle: Translations.of(context)!.general,
                      rowData: [
                        SettingRowData(
                          title: Translations.of(context)!.displayLanguage,
                          subtitle: Translations.of(context)!
                              .descriptionDisplayLanguage,
                          onClick: () {
                            controller.changeDisplayLangauge(context);
                          },
                        ),
                      ],
                    ),
                    SettingCard(
                      sectionTitle: Translations.of(context)!.about,
                      rowData: [
                        SettingRowData(
                          title: Translations.of(context)!.developerContact,
                          subtitle: Translations.of(context)!
                              .descriptionDeveloperContact,
                          onClick: () {
                            controller.displayAbout(context);
                          },
                        ),
                        SettingRowData(
                          title: Translations.of(context)!.appVersion,
                          subtitle: 'v 0.0.1',
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SettingCard(
                      sectionTitle: Translations.of(context)!.others,
                      rowData: [
                        SettingRowData(
                          title: Translations.of(context)!.sellers,
                          subtitle: Translations.of(context)!
                              .descriptionManageSellers,
                          onClick: () {
                            controller.manageSellers(context);
                          },
                        ),
                        SettingRowData(
                          title: Translations.of(context)!.colors,
                          subtitle:
                              Translations.of(context)!.descriptionManageColors,
                          onClick: () {
                            controller.manageColors(context);
                          },
                        ),
                        SettingRowData(
                          title: Translations.of(context)!.sizes,
                          subtitle:
                              Translations.of(context)!.descriptionManageSizes,
                          onClick: () {
                            controller.manageSizes(context);
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
