
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

class SelectorDropDown<T> extends StatefulWidget{
  const SelectorDropDown({Key? key, required this.items, this.label, this.adapter}) : super(key: key);

  final List<T> items;
  final Widget? label;
  final DropDownMenuItemAdapter<T>? adapter;

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _SelectorDropDownState<T>(adapter);
}

class _SelectorDropDownState<T> extends State<SelectorDropDown>{

  _SelectorDropDownState(DropDownMenuItemAdapter<T>? adapter){
    itemadapter = adapter ?? defaultDropDownMenuItemAdapter;
  }

  T? selectedValue;
  late DropDownMenuItemAdapter<T> itemadapter;

  DropdownMenuItem<T> defaultDropDownMenuItemAdapter(T item) {
    return DropdownMenuItem<T>(
        value: item,
        child: Text(item.toString()));
  }

  List<DropdownMenuItem<T>>? buildDropDownItems(){
  
    List<DropdownMenuItem<T>> dropDownItems = [];


    for (T item in widget.items) { 
      dropDownItems.add(itemadapter(item));
    }

    return dropDownItems;
  }

  @override
  Widget build(BuildContext context) {

    return DropdownButton<T>(
      hint: widget.label,
      isExpanded: true,
          value: selectedValue,
          items: buildDropDownItems(),
          onChanged: (T? value) { 
            setState((){
              selectedValue = value;
            });
        });
  }
}
