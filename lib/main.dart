import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/settings.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Stores/navigation_center.dart';
import 'package:stock_manager/Stores/event_center.dart';
import 'package:stock_manager/Ui/Components/Sidebar/sidebar_holder.dart';
import 'package:stock_manager/Ui/Panels/Login/login.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/themes.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

void main() async {

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => NavigationCenter()),
    ChangeNotifierProvider(create: (context) => SettingsLiveDataModel()),
    Provider(create: (context) => ControllersProvider()),
  ], child: const MyApp()));
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
    EventCenter.initialise(context);

    return Consumer<SettingsLiveDataModel>(
        builder: (context, liveModel, child) {


      return MaterialApp(
        title: Constants.appName,
        theme: AppThemes.lightTheme2,
        themeMode: ThemeMode.dark,
        darkTheme: AppThemes.darkTheme2,
        locale: liveModel.displayLanguage,
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

  late NavigationCenter navigationStore;

  void _init() {
    if (isInitialized) {
      return;
    }
    navigationStore = Provider.of<NavigationCenter>(context, listen: false);
    selectedPanel = navigationStore.selectedIndex;
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
                      child: navigationStore.getSelectedPanel(),
                    );
                  },
                ),
              ))
        ],
      ),
    );
  }
}
