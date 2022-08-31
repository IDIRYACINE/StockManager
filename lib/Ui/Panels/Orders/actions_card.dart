
import 'package:flutter/material.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatefulWidget {
  const ActionsCard({Key? key}) : super(key: key);
  
  
  @override
  State<StatefulWidget> createState() => _ActionsCardState();
}

class _ActionsCardState extends State<ActionsCard> {
 
  List<DropdownMenuItem<OrderStatus>>? buildDropDownItems(){
    return OrderStatus.values.map((status){
      return DropdownMenuItem<OrderStatus>(
        value: status,
        child: Text(status.name));
    }).toList();
  }

  OrderStatus selectedOrderStatus = OrderStatus.receive;

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: Measures.small,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: DropdownButton<OrderStatus>(
              value: selectedOrderStatus,
              items: buildDropDownItems(),
              onChanged: (OrderStatus? value) { 
                setState((){
                  selectedOrderStatus = value!;
                });
                }),
               
            ),
          
          Flexible(
            child: ElevatedButton(
              child: const Text(Labels.add),
              onPressed: () {},
            ),
          ),
           Flexible(
            child: ElevatedButton(
              child: const Text(Labels.filter),
              onPressed: () {},
            ),
          ),
           Flexible(
            child: ElevatedButton(
              child: const Text(Labels.refresh),
              onPressed: () {},
            ),
          ),
           Flexible(
            child: ElevatedButton(
              child: const Text(Labels.details),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}