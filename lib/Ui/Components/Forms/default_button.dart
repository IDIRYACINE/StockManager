
import 'dart:convert';

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
