
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';

abstract class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.active,
    primarySwatch: Colors.yellow,
    backgroundColor: AppColors.grey,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme:  ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.active,
      onPrimary: AppColors.white,
      secondary: Colors.yellowAccent,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError:  AppColors.red,
      background: AppColors.grey,
      onBackground: AppColors.active,
      surface: AppColors.white,
      onSurface: AppColors.black,),
  ); 

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.yellowAccent,
    primarySwatch: Colors.yellow,
    backgroundColor: AppColors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme:  ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.yellowAccent[200]!,
      onPrimary: Colors.grey[900]!,
      secondary: Colors.yellow,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError:  AppColors.white,
      background: Colors.black,
      onBackground: Colors.grey[800]!,
      surface: AppColors.white,
      onSurface: AppColors.black,),
  );  

  static final  ThemeData data = ThemeData.from(colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.yellowAccent,
      onPrimary: AppColors.white,
      secondary: Colors.yellow,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError:  AppColors.white,
      background: Colors.black,
      onBackground: Colors.grey[800]!,
      surface: AppColors.white,
      onSurface: AppColors.black,));

}