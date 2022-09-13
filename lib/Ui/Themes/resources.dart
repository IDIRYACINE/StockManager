import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color grey = Colors.grey;
  static const Color white = Colors.white;
  static final active = Colors.blueAccent[700]!;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color inactive = Color.fromARGB(255, 132, 186, 230);

  //Discord color palletes
  static const Color darkBackground = Color.fromARGB(1,30, 33, 36);
  static const Color darkBackground2 = Color.fromARGB(1,40, 43, 48,);
  static const Color darkSurface = Color.fromARGB(1,54, 57, 62,);
  static const Color darkSurface2 = Color.fromARGB(1,66, 69, 73,);

  // Facebook color pallets

  static const Color whiteBackground = Color.fromARGB(0,255, 255, 255);
  static const Color whiteBackground2 = Color.fromARGB(0,247, 247, 247);
  static const Color whiteSurface = Color.fromARGB(0,223, 227, 238);
  static const Color whiteSurface2 = Color.fromARGB(0,139, 157, 195);
}

abstract class AppRessources {
  static const noPreviewImage = 'assets/images/no_image_found.png';
  static const addImage = 'assets/images/add_image.png';
  static const whiteLogo = 'assets/images/white_logo.png';
  static const blackLogo = 'assets/images/black_logo.png';
  static const facebookLogo = 'assets/images/facebook_logo.png';
  static const instgramLogo = 'assets/images/instgram_logo.png';
  static const whatesappLogo = 'assets/images/whatsapp_logo.png';

  static const facebookLink = 'Marwa Boutique';
  static const instegramLink = 'marwaboutique34';
  static const viberPhone = '+213559275041';

}
