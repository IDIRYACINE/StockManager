
import 'package:flutter/material.dart';

abstract class AppColors{
  static const Color grey = Colors.grey;
  static const Color white = Colors.white;
  static final active = Colors.blueAccent[700]!;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color inactive = Color.fromARGB(255, 132, 186, 230);

}

abstract class AppRessources{
  static const noPreviewImage = 'assets/images/no_image_found.png';
  static const addImage = 'assets/images/add_image.png';
}