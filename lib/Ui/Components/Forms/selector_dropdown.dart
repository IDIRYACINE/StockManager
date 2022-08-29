
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

class SelectorDropDown<T> extends StatefulWidget{
  const SelectorDropDown({Key? key, required this.items, this.label, this.adapter, required this.onSelect}) : super(key: key);

  final List<T> items;
  final Widget? label;
  final DropDownMenuItemAdapter<T>? adapter;
  final ValueCallback<T> onSelect;

  @override
  State<SelectorDropDown<T>> createState() => _SelectorDropDownState<T>();
}

class _SelectorDropDownState<T> extends State<SelectorDropDown<T>>{


  @override
  void initState(){
    super.initState();

    
    itemadapter = widget.adapter??defaultDropDownMenuItemAdapter;
    
    onSelect = widget.onSelect;
  }

  T? selectedValue;

  late DropDownMenuItemAdapter<T> itemadapter;

  late ValueCallback<T> onSelect;

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
            if(value != null){
            setState((){
                            selectedValue = value;

              onSelect(value);
            });}
        });
  }
}
