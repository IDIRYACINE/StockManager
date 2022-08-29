

import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget{
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    void add(){
    }

    void edit(){
    }

    void remove(){
    }

    void search(){
    }

    void refresh(){
    }

   return Card(
      elevation: Measures.small,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Flexible(child: ElevatedButton(onPressed: add, child: const Text(Labels.add),)),
                Flexible(child: ElevatedButton(onPressed: edit, child: const Text(Labels.edit),)),
                Flexible(child: ElevatedButton(onPressed: remove, child: const Text(Labels.remove),)),
                Flexible(child: ElevatedButton(onPressed: refresh, child: const Text(Labels.refresh),)),
                Flexible(child: ElevatedButton(onPressed: search, child: const Text(Labels.search),)),
            ],
          ),
   );
  }

}