import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Stores/navigation_center.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

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
  late Color selectedBackground;
  late TextStyle selectedTextStyle, unselectedTextStyle , textStyle;

  late Color backgroundColor;

  late NavigationCenter navigationStore;
  late double fonstSize;

  bool isInitialized = false;

  void _init() {
    if (isInitialized) {
      return;
    }
    navigationStore = Provider.of<NavigationCenter>(context);

    selectedBackground = Theme.of(context).hoverColor;
    selectedTextStyle =
        Theme.of(context).textTheme.button!.copyWith(color: Colors.white);
    unselectedTextStyle = Theme.of(context).textTheme.button!.copyWith(color: Colors.grey);

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
      child: ValueListenableBuilder<int>(
          valueListenable: navigationStore.selectedIndex,
          builder: (context, value, child) {
            bool isSelected = value == widget.index;
            backgroundColor = isSelected ? Colors.white : Colors.grey;

            textStyle = isSelected ? selectedTextStyle : unselectedTextStyle;

            return MaterialButton(
                onPressed: onClicked,
                color: isSelected ? Theme.of(context).colorScheme.primaryContainer : null,
                child: Padding(
                  padding: const EdgeInsets.only(left: Measures.paddingLarge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        navigationStore.getSelectedPanelIcon(widget.index),
                        color: backgroundColor,
                      ),
                      const SizedBox(
                        width: Measures.paddingLarge,
                      ),
                      Text(
                        widget.title,
                        style:textStyle
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
