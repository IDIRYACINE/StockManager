
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Components/Decorators/default_decorator.dart';

class DatePicker extends StatefulWidget {

  const DatePicker({Key? key, required this.onDatePicked, required this.label}) : super(key: key);

  final VoidValueCallback<String> onDatePicked; 
  final String label;

  @override
  State<StatefulWidget> createState() => _DatePickerState();

}

class _DatePickerState extends State<DatePicker>{

  String selectedDate = '';

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: (){
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 1),
        lastDate: DateTime.now(),
      ).then((date){
        if(date != null){
          setState(() {
            selectedDate = '${date.day}/${date.month}/${date.year}';
                      widget.onDatePicked(selectedDate);

          });
        }
      });
    },
    
    child: Row(
      children:  [
        Expanded(
            child: DefaultDecorator(
              title: widget.label,
              child: Text(selectedDate)),
            ),
      ],
    ));
   
  }
}