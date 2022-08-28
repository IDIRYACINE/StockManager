
import 'package:flutter/material.dart';

class SelectorDropDown<T> extends StatefulWidget{
  const SelectorDropDown({Key? key, required this.items, this.label}) : super(key: key);

  final List<T> items;
  final Widget? label;

  @override
  State<StatefulWidget> createState() => _SelectorDropDownState<T>();
}

class _SelectorDropDownState<T> extends State<SelectorDropDown>{

  T? selectedValue;

  List<DropdownMenuItem<T>>? buildDropDownItems(){
    List<DropdownMenuItem<T>> dropDownItems = [];

    for (T item in widget.items) { 
      dropDownItems.add(DropdownMenuItem(
        value: item,
        child: Text(item.toString())));
    }

    return dropDownItems;
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        if(widget.label != null)
          widget.label!,
        DropdownButton<T>(
              value: selectedValue,
              items: buildDropDownItems(),
              onChanged: (T? value) { 
                setState((){
                  selectedValue = value;
                });
            }),
      ],
    );
  }
}
