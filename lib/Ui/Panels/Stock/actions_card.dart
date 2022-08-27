

import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class ActionsCard extends StatelessWidget{
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Card(
      elevation: Measures.small,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Flexible(child: ElevatedButton(onPressed: (){}, child: const Text(ButtonsTitles.add),)),
                Flexible(child: ElevatedButton(onPressed: (){}, child: const Text(ButtonsTitles.edit),)),
                Flexible(child: ElevatedButton(onPressed: (){}, child: const Text(ButtonsTitles.remove),)),
                Flexible(child: ElevatedButton(onPressed: (){}, child: const Text(ButtonsTitles.refresh),)),
                Flexible(child: ElevatedButton(onPressed: (){}, child: const Text(ButtonsTitles.search),)),
            ],
          ),
   );
  }

}