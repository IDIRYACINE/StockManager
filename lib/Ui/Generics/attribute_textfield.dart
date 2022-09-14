
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class AttributeTextField extends StatefulWidget{

  const AttributeTextField({Key? key, this.initialValue,
  required this.label, this.validator, this.onChanged,
  this.readOnly = false,  this.obscureText = false, this.controller, }) : super(key: key);

  final String? initialValue;
  final String label;
  final ValidationFunction<String>? validator;
  final OnChangedFunction<String>? onChanged;
  final bool readOnly;
  final bool obscureText;
  final TextEditingController? controller;


  @override
  State<StatefulWidget> createState() => _AttributeTextFieldState();
} 

class _AttributeTextFieldState extends State<AttributeTextField>{

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      enabled: !widget.readOnly,
      controller: widget.controller,
      initialValue: widget.initialValue ,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.label,
        
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(Measures.small)
        )
      ),
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}  

