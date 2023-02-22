import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/Ui/Components/logo.dart';
import 'package:stock_manager/Ui/Generics/Sidebar/sidebar_button.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SidebarHolder extends StatelessWidget {
  final int sidebarButtonsFlex = 4;
  final int sidebarButtonsSpacingFlex = 1;

  const SidebarHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: Measures.medium),
            child: Logo(
              width: 200,
              height: 150,
            ),
          ),
          Spacer(flex: sidebarButtonsSpacingFlex),
           Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.dashboard,
                  index: AppNavigator.dashboardIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.stock,
                  index: AppNavigator.stockIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.records,
                  index: AppNavigator.recordsIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.sales,
                  index: AppNavigator.salesIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.deposit,
                  index: AppNavigator.depositsIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.orders,
                  index: AppNavigator.ordersIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.settings,
                  index: AppNavigator.settingsIndex)),
          const SizedBox(height: Measures.medium),
        ],
      ),
    );
  }
}
