import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';

class MyThemes {
  MyThemes._();
  static ThemeData myDefaultTheme = ThemeData(
        fontFamily: 'Roboto',
        primaryColor: MyColors.brandPrimaryColor,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: MyColors.brandSecondary),
          displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: MyColors.brandSecondary),
          displaySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.brandSecondary),
          headlineLarge: TextStyle(fontSize: 21, color: MyColors.brandPrimaryColor),
          bodyLarge: TextStyle(fontSize: 14),
          bodyMedium: TextStyle(fontSize: 13),
          bodySmall: TextStyle(fontSize: 10),
          labelLarge: TextStyle(fontSize: 30, fontWeight:  FontWeight.bold, color: MyColors.brandPrimaryColor),
          labelMedium: TextStyle(fontSize: 20, fontWeight:  FontWeight.w400, color: MyColors.brandLightDarkColor),
          labelSmall: TextStyle(fontSize: 16, fontWeight:  FontWeight.bold, color: MyColors.brandDarkColor)
        ),
      );
}