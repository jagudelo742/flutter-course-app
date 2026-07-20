import 'package:flutter/material.dart';
import 'package:flutter_course/config/routes/app_routes.dart';
import 'package:flutter_course/features/home/models/user.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = User(name: 'Juan', age: 24);
    return Scaffold(
      appBar: AppBar(title: Text('New page')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.otherPage, arguments: userData);
          },
          child: Text('This is a second page'),
        ),
      ),
    );
  }
}
