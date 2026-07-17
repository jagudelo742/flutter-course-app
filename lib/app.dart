import 'package:flutter/material.dart';
import 'package:flutter_course/config/app_routes.dart';
import 'package:flutter_course/design/thems.dart';
import 'package:flutter_course/models/user.dart';
import 'package:flutter_course/pages/home_page.dart';
import 'package:flutter_course/pages/new_page.dart';
import 'package:flutter_course/pages/other_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.myDefaultTheme,
      /* routes: {
        AppRoutes.newPage: (context) => NewPage(),
        AppRoutes.otherPage: (context) => OtherPage(),
        AppRoutes.home: (context) => HomePage(),
      }, */
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.newPage:
            return MaterialPageRoute(builder: (context) => const NewPage());
          case AppRoutes.otherPage:
          return MaterialPageRoute(builder: (context) =>  OtherPage(userData: settings.arguments as User));  
          default:
            return MaterialPageRoute(builder: (context) => const  HomePage());
        }
      },
    );
  }
}
