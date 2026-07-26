import 'package:flutter/material.dart';
import 'package:flutter_course/config/routes/app_routes.dart';
import 'package:flutter_course/core/design/thems.dart';
import 'package:flutter_course/features/home/models/user.dart';
import 'package:flutter_course/features/home/presentation/pages/home_page.dart';
import 'package:flutter_course/features/login/presentation/pages/login_page.dart';
import 'package:flutter_course/features/sig%20in/presentation/pages/sig_in.page.dart';
import 'package:flutter_course/pages/other_page.dart';
import 'package:flutter_course/pages/second_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.myDefaultTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.newPage:
            return MaterialPageRoute(builder: (context) => const NewPage());
          case AppRoutes.otherPage:
            return MaterialPageRoute(builder: (context) => OtherPage(userData: settings.arguments as User));
          case AppRoutes.home: 
            return MaterialPageRoute(builder: (context) => HomePage(userName: settings.arguments as String,));  
          case AppRoutes.siginPage:
            return MaterialPageRoute(builder: (context) => const SigInPage());
          default:
            return MaterialPageRoute(builder: (context) => const LoginPage());
        }
      },
    );
  }
}
