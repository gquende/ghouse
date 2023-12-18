import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  static Color PRIMARYCOLOR = Color(0xffFDB913);
  static Color SECONDARYCOLOR = Color(0xff231F20);
  static Color THIRDCOLOR = Color(0xff272727);
  static Color GREENCOLOR = Color(0xff16AC83);

  static ThemeData light = ThemeData(
      primaryColor: PRIMARYCOLOR,
      primaryColorDark: SECONDARYCOLOR,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: Colors.white,
          centerTitle: true,
          color: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)));

  static ThemeData darkMode = ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: Colors.white,
          centerTitle: true,
          color: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)));
}
