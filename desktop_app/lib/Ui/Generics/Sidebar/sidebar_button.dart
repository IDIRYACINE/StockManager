import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
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

  late double fonstSize;

  bool isInitialized = false;

  void _init() {
    if (isInitialized) {
      return;
    }

    selectedBackground = Theme.of(context).hoverColor;
    selectedTextStyle =
        Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white);
    unselectedTextStyle = Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.grey);

    isInitialized = true;
  }

  void onClicked() {
    AppNavigator.navigateToPanel(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    _init();

    return SizedBox(
      width: double.infinity,
      child: ValueListenableBuilder<int>(
          valueListenable: AppNavigator.selectedIndex,
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
                        AppNavigator.getSelectedPanelIcon(widget.index),
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
