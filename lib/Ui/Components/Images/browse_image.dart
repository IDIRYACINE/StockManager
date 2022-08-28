
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';

class BrowseImage extends StatefulWidget{
  const BrowseImage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BrowseImageState();
}

class _BrowseImageState extends State<BrowseImage>{
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      label:"Browse",
      onPressed: (){},
    );
  }
}
