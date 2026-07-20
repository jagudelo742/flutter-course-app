import 'package:flutter/material.dart';
import 'package:flutter_course/features/home/models/user.dart';

class OtherPage extends StatelessWidget {
  final User userData;
  const OtherPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is a other page'),),
      body: Center(child: TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          'This is a other page again, my name is ${userData.name} tengo ${userData.age} anos'
        ),
      ),),
    );
  }
}