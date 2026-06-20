import 'package:flutter/material.dart';
import 'package:flutter_course/design/colors.dart';

class MyThemes {
  MyThemes._();
  static ThemeData myDefaultTheme = ThemeData(
        fontFamily: 'Roboto',
        primaryColor: MyColors.brandPrimaryColor,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: MyColors.brandSecondaryColor),
          displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: MyColors.brandSecondaryColor),
          displaySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.brandSecondaryColor),
          headlineLarge: TextStyle(fontSize: 21, color: MyColors.brandPrimaryColor),
          bodyLarge: TextStyle(fontSize: 14),
          bodyMedium: TextStyle(fontSize: 13),
          bodySmall: TextStyle(fontSize: 10),
        ),
      );
}