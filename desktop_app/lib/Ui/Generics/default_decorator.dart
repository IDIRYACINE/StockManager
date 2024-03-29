import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DefaultDecorator extends StatelessWidget {
  const DefaultDecorator({Key? key, required this.child, this.title, this.showShadows = true}) : super(key: key);

  final Widget child;
  final String? title;
  final bool showShadows;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Measures.small)
       
      ),
      child: InputDecorator(
          decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Measures.small)
          )
        ),
        child: child,
      ),
    );
  }
}
