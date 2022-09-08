import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Stores/navigation_store.dart';

class SidebarButton extends StatefulWidget {
  final String title;
  final int index;
  const SidebarButton({
    Key? key,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SidebarButtonState();
}

class _SidebarButtonState extends State<SidebarButton> {
  late Color selectedBackground, unselectedBackground;

  late Color selectedTextColor, unselectedTextColor;

  late Color backgroundColor, textColor;

  late NavigationStore navigationStore;

  bool isInitialized = false;

  void _init() {
    if (isInitialized) {
      return;
    }
    navigationStore = Provider.of<NavigationStore>(context);


    isInitialized = true;
  }


  void onClicked() {
    navigationStore.navigateToPanel(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    _init();

    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onClicked, 

        child: Text(widget.title),

        
        ),
    );
  }
}
