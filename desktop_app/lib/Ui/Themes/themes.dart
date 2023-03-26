// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';

abstract class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.active,
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.active,
      onPrimary: AppColors.white,
      secondary: Colors.yellowAccent,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.red,
      background: AppColors.grey,
      onBackground: AppColors.active,
      surface: AppColors.white,
      onSurface: AppColors.black,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.yellowAccent,
    primarySwatch: Colors.yellow,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.yellowAccent[200]!,
      onPrimary: Colors.grey[900]!,
      secondary: Colors.yellow,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      background: Colors.black,
      onBackground: Colors.grey[800]!,
      surface: AppColors.white,
      onSurface: AppColors.black,
    ),
  );

  static final ThemeData darkTheme2 = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.grey   ,
      primaryContainer: Color(0xFFD4AF37),
      primary: Color(0xFFD4AF37),
      surfaceTint: Colors.black12,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );

  static final ThemeData lightTheme2 = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,  
      primary: Colors.amber,
      surfaceTint: Colors.grey,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );

  static final testTheme = ColorScheme.fromSeed(
    seedColor: AppColors.darkBackground2,
  );

  final goldColor = Color(0xFFD4AF37);
}
