

import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

class SelectorDropDown<T> extends StatefulWidget{
  const SelectorDropDown({Key? key, required this.items, this.label, this.adapter, required this.onSelect}) : super(key: key);

  final List<T> items;
  final Widget? label;
  final DropDownMenuItemAdapter<T>? adapter;
  final VoidValueCallback<T> onSelect;

  @override
  State<SelectorDropDown<T>> createState() => _SelectorDropDownState<T>();
}

class _SelectorDropDownState<T> extends State<SelectorDropDown<T>>{

  @override
  void initState(){
    super.initState();
    
    onSelect = widget.onSelect;
  }

  T? selectedValue;

  late DropDownMenuItemAdapter<T> itemadapter;

  late VoidValueCallback<T> onSelect;

  bool init = false;

  DropdownMenuItem<T> defaultDropDownMenuItemAdapter(T item) {
    return DropdownMenuItem<T>(
        value: item,
        child: Text(item.toString()));
  }


  DropdownMenuItem<T> enumDropDownMenuItemAdapter(T item) {
    return DropdownMenuItem<T>(
        value: item,
        child: Text((item as Enum).name));
  }

  List<DropdownMenuItem<T>>? buildDropDownItems(){
  
    List<DropdownMenuItem<T>> dropDownItems = [];


    for (T item in widget.items) { 
      dropDownItems.add(itemadapter(item));
    }

    return dropDownItems;
  }

  void initAdapter(){
    if(init){return;}
    if(widget.adapter == null){
      itemadapter = (widget.items.isNotEmpty && widget.items[0] is Enum) ?  enumDropDownMenuItemAdapter : defaultDropDownMenuItemAdapter;
    }
    else{
      itemadapter = widget.adapter!;
    }
    init = true;
  }

  @override
  Widget build(BuildContext context) {

    initAdapter();

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
