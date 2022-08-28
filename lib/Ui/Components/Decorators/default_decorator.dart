import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class DefaultDecorator extends StatelessWidget {
  const DefaultDecorator({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Measures.small),
        border: Border.all(
          color: Colors.black,
          width: Measures.smallBorder,
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: child,
    );
  }
}
