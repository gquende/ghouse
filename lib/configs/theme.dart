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
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      textTheme: TTextTheme.lightTextTheme);





  static ThemeData darkMode = ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: Colors.white,
          centerTitle: true,
          color: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)));
}


class TAppBarTheme{

 TAppBarTheme._();
 static const lightAppBarTheme= AppBarTheme(
   elevation: 0,
   centerTitle: true,
   scrolledUnderElevation: 0,
   backgroundColor: Colors.transparent,
   surfaceTintColor: Colors.transparent,
   iconTheme: IconThemeData(color:  Colors.black, size: 24),
   actionsIconTheme: IconThemeData(color: Colors.blue, size:
   24),titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: Colors.black)

 );


 static const darkAppBarTheme= AppBarTheme(
     elevation: 0,
     centerTitle: true,
     scrolledUnderElevation: 0,
     backgroundColor: Colors.transparent,
     surfaceTintColor: Colors.transparent,
     iconTheme: IconThemeData(color:  Colors.black, size: 24),
     actionsIconTheme: IconThemeData(color: Colors.blue, size:
     24),titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: Colors.black)

 );



}


class TTextTheme{


  TTextTheme._();


      static TextTheme lightTextTheme=TextTheme(
        headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.black),
        headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.black),
        headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.black),
        titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black),
        titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black),
        titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),
        bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),
        bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.black),
        bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5)),





      );



}
