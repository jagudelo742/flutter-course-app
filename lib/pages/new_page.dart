import 'package:flutter/material.dart';
import 'package:flutter_course/config/app_routes.dart';
import 'package:flutter_course/models/user.dart';


class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = User(name: 'Juan', age: 23);
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
      ),
      body: Center(
        child: TextButton(child: Text('Pruebita'), onPressed: (){
          Navigator.of(context).pushReplacementNamed(AppRoutes.otherPage, arguments: userData);
        },),
      )
    );
  }
}