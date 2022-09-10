
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';

class BrowseImage extends StatefulWidget{
  const BrowseImage({Key? key, this.imageUrl, required this.onImageSelected}) : super(key: key);
  final String? imageUrl;
  final Callback<String> onImageSelected;
  
  @override
  State<StatefulWidget> createState() => _BrowseImageState();
}

class _BrowseImageState extends State<BrowseImage>{

  String? imageUrl;

  @override
  void initState() {
    super.initState();
    imageUrl = widget.imageUrl;
  }

  
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: (){
        FilePicker.platform.pickFiles().then((pickerResult) {
          if(pickerResult !=null  && pickerResult.files.isNotEmpty){
            setState(() {
              imageUrl = pickerResult.files.first.path;
              widget.onImageSelected(imageUrl!);

            });
     }
        });
        },
      
      child: (imageUrl == null)? Image.asset(AppRessources.addImage,fit: BoxFit.fill,):
        FaultToleratedImage(imageUrl: imageUrl!,),);
      
      
  }
}


class FaultToleratedImage extends StatelessWidget{

  const FaultToleratedImage({Key? key, required this.imageUrl, this.width, this.height}) : super(key: key);

  final String imageUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.file(File(imageUrl),fit: BoxFit.fill,errorBuilder: (context,error,stack) => Image.asset(AppRessources.noPreviewImage),));
  }

}