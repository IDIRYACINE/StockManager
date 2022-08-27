
import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/colors.dart';

abstract class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.active,
    primarySwatch: Colors.blue,
    backgroundColor: AppColors.grey,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme:  ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.active,
      onPrimary: AppColors.white,
      secondary: AppColors.inactive,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError:  AppColors.red,
      background: AppColors.grey,
      onBackground: AppColors.active,
      surface: AppColors.white,
      onSurface: AppColors.black,),
  ); 
}