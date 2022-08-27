
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
import 'package:stock_manager/Ui/Components/Sidebar/sidebar_holder.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/themes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavigationStore()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Titles.appName,
      theme: AppThemes.lightTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final int sidebarFLex = 1;
  final int panelFLex = 5;
  

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isInitialized = false;

  late ValueListenable<int> selectedPanel;

  late NavigationStore navigationStore;

  void _init(){
    if(isInitialized){ return;}
    navigationStore = Provider.of<NavigationStore>(context, listen: false);
    selectedPanel = navigationStore.selectedIndex; 
    isInitialized = true;
  }

  @override
  Widget build(BuildContext context) {

    _init();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(flex: widget.sidebarFLex,child: const Padding(
          padding: EdgeInsets.all(Measures.small),
          child: SidebarHolder(),
        ),),
        Expanded(
          flex: widget.panelFLex,
          child:  Padding(
          padding: const EdgeInsets.all(Measures.small),
          child:  ValueListenableBuilder<int>(
            valueListenable: selectedPanel,
            builder: (context, value, child) {
              return Center(
                child: navigationStore.getSelectedPanel(),
              );
            },
          ),
        ))
      ],),
    );
  }
}
