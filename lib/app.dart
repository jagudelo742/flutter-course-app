import 'package:flutter/material.dart';
import 'package:flutter_course/design/thems.dart';
import 'package:flutter_course/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.myDefaultTheme,
      home: const HomePage()
    );
  }
}
