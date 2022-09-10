

import 'package:flutter/widgets.dart';
import 'package:stock_manager/Ui/Components/Images/browse_image.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';

class Logo extends StatelessWidget{
  const Logo({Key? key, this.width = 900, this.height = 250}) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FaultToleratedImage(imageUrl: AppRessources.blackLogo,height: height,width: width,);
  }
}