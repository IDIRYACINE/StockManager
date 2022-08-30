

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SidebarButton extends StatefulWidget{

  final String title;
  final int index;
  const SidebarButton({Key? key, required this.title , required this.index,}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SidebarButtonState();
}

class _SidebarButtonState extends State<SidebarButton>{
  
  late Color selectedBackground,unselectedBackground;

  late Color selectedTextColor,unselectedTextColor;

  late Color backgroundColor,textColor;

  late NavigationStore navigationStore;

  bool isInitialized = false;

  void _init(){

    if(isInitialized){ return;}
    navigationStore = Provider.of<NavigationStore>(context);

    selectedBackground = Theme.of(context).colorScheme.primary;
    unselectedBackground = Theme.of(context).colorScheme.onBackground;
    selectedTextColor = Theme.of(context).colorScheme.onPrimary;
    unselectedTextColor = Theme.of(context).colorScheme.surface;

    isInitialized = true;
  }

  void _checkIfActive(){
    bool isActive = navigationStore.selectedIndex.value == widget.index;
    
    if(isActive){
      backgroundColor = selectedBackground ;
      textColor = selectedTextColor;
     return; 
    }
    backgroundColor = unselectedBackground ;
    textColor = unselectedTextColor;
  }

  void onClicked(){
    navigationStore.navigateToPanel(widget.index);
  }

  @override
  Widget build(BuildContext context) {

    _init();
    _checkIfActive();

    return ConstrainedBox(
      constraints:  const BoxConstraints(minHeight: Measures.mediumCardHeight),
      child: InkResponse(
        onTap: onClicked,
        child: Card(
          color: backgroundColor,
          elevation: Measures.small,
          child: Center(child: Text(widget.title,style: TextStyle(color: textColor),textAlign: TextAlign.center,)),),
      ),
    );
  }
}