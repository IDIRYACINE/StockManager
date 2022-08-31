import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
import 'package:stock_manager/Ui/Components/Sidebar/sidebar_holder.dart';
import 'package:stock_manager/Ui/Panels/Login/login.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/themes.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => NavigationStore()),
    ChangeNotifierProvider(create: (context) => ControllersProvider()),
    ChangeNotifierProvider(create: (context) => StockLiveDataModel()),
    ChangeNotifierProvider(create: (context) => SellersLiveDataModel()),
    ChangeNotifierProvider(create: (context) => RecordsLiveDataModel()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Labels.appName,
      theme: AppThemes.darkTheme,
      home: const MyHomePage(),
    );
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

  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isInitialized = false;

  late ValueListenable<int> selectedPanel;

  late NavigationStore navigationStore;

  void _init() {
    if (isInitialized) {
      return;
    }
    navigationStore = Provider.of<NavigationStore>(context, listen: false);
    selectedPanel = navigationStore.selectedIndex;
    isInitialized = true;
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
