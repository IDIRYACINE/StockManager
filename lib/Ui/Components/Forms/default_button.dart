

import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget{
  const DefaultButton({Key? key, this.onPressed, required this.label}) : super(key: key);

  final VoidCallback? onPressed;
  final String label;

  @override
  State<StatefulWidget> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton>{

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(widget.label),
      );
  }

}

class ActionButton extends StatefulWidget{
  const ActionButton({Key? key, this.onPressed, required this.label, required this.icon}) : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final IconData icon;

  @override
  State<StatefulWidget> createState() => _ActionButtonState();
}

class _ActionButtonState  extends State<ActionButton>{
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onPressed, child: Icon(widget.icon),);
  }
}

