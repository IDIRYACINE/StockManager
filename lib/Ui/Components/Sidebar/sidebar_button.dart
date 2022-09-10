import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Stores/navigation_store.dart';
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
  late Color selectedTextColor, unselectedTextColor;

  late Color backgroundColor, textColor;

  late NavigationStore navigationStore;

  bool isInitialized = false;

  void _init() {
    if (isInitialized) {
      return;
    }
    navigationStore = Provider.of<NavigationStore>(context);

    selectedBackground = Theme.of(context).hoverColor;
    selectedTextColor = Colors.white;
    unselectedTextColor = Colors.grey;

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
            backgroundColor = isSelected ?  Colors.white : unselectedTextColor;
            textColor = isSelected ? selectedTextColor : unselectedTextColor;

            return MaterialButton(
                onPressed: onClicked,
                color: isSelected ? Colors.amber : null,
                child: Padding(
                  padding: const EdgeInsets.only(left : Measures.paddingLarge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(navigationStore.getSelectedPanelIcon(widget.index)
                      ,
                      color: backgroundColor,
                      ),

                      const SizedBox(
                        width: Measures.paddingLarge,
                      ),
                      
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 20,
                          color:
                             textColor,
                        ),
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
