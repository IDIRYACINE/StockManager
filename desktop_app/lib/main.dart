import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Deposit/State/bloc.dart';
import 'package:stock_manager/Features/History/History/State/history.dart';
import 'package:stock_manager/Features/Orders/State/bloc.dart';
import 'package:stock_manager/Features/Sellers/State/sellers.dart';
import 'package:stock_manager/Features/Statistiques/State/statistiques.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/Features/Settings/Models/settings.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Ui/Components/Sidebar/sidebar_holder.dart';
import 'package:stock_manager/Ui/Panels/Login/login.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/themes.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

import 'Features/Purchase/State/purchase.dart';
import 'Features/Stock/State/stock.dart';

void main() async {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (context) => DepositBloc.initial()),
      BlocProvider(create: (context) => PurchaseBloc.initial()),
      BlocProvider(create: (context) => SellersBloc.initial()),
      BlocProvider(create: (context) => OrdersBloc.initial()),
      BlocProvider(create: (context) => StatistiquesBloc.initial()),
            BlocProvider(create: (context) => HistoryBloc.initial()),
                        BlocProvider(create: (context) => StockBloc.initial()),


    ], child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ServicesStore.getInstance();

    return AnimatedBuilder(
        animation: SettingsLiveDataModel.instance(),
        builder: (context, child) {
          return MaterialApp(
            title: Constants.appName,
            theme: AppThemes.lightTheme2,
            themeMode: ThemeMode.dark,
            darkTheme: AppThemes.darkTheme2,
            locale: SettingsLiveDataModel.instance().displayLanguage,
            navigatorKey: AppNavigator.key,
            localizationsDelegates: Translations.localizationsDelegates,
            supportedLocales: Translations.supportedLocales,
            home: const MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: LoginPanel()));
  }
}

class App extends StatefulWidget {
  final int sidebarFLex = 1;
  final int panelFLex = 5;

  static late BuildContext appContext;

  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isInitialized = false;

  late ValueListenable<int> selectedPanel;


  void _init() {
    if (isInitialized) {
      return;
    }
    selectedPanel = AppNavigator.selectedIndex;
    isInitialized = true;
    App.appContext = context;
  }

  @override
  Widget build(BuildContext context) {
    _init();

    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: widget.sidebarFLex,
            child: const Padding(
              padding: EdgeInsets.all(Measures.small),
              child: SidebarHolder(),
            ),
          ),
          Expanded(
            flex: widget.panelFLex,
            child: Padding(
              padding: const EdgeInsets.all(Measures.small),
              child: ValueListenableBuilder<int>(
                valueListenable: selectedPanel,
                builder: (context, value, child) {
                  return Center(
                    child: AppNavigator.getSelectedPanel(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
