import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Generics/lables.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onPressed,
    required this.label,
    required this.icon, this.backgroundColor,
    this.minWidth = 150,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  final Color? backgroundColor;
  final double minWidth;

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
      
      constraints: BoxConstraints(minWidth: minWidth),
      child: ElevatedButton(onPressed: onPressed,
      
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
      ),
      child: LogoTextButonLabel(label: label,icon: icon)),
    );
  }
}
