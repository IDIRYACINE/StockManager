import 'package:flutter/material.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
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
                  title: Translations.of(context)!.stock,
                  index: NavigationStore.stockIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.records,
                  index: NavigationStore.recordsIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.sales,
                  index: NavigationStore.salesIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.deposit,
                  index: NavigationStore.depositsIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.orders,
                  index: NavigationStore.ordersIndex)),
          const SizedBox(height: Measures.medium),
          Flexible(
              child: SidebarButton(
                  title: Translations.of(context)!.settings,
                  index: NavigationStore.settingsIndex)),
          const SizedBox(height: Measures.medium),
        ],
      ),
    );
  }
}
