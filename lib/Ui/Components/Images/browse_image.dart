
import 'package:flutter/material.dart';

class BrowseImage extends StatefulWidget{
  const BrowseImage({Key? key, this.width = double.infinity}) : super(key: key);
  final double width;
  @override
  State<StatefulWidget> createState() => _BrowseImageState();
}

class _BrowseImageState extends State<BrowseImage>{
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/browse_image.png',width:widget.width,);
  }
}
