import 'package:flutter/material.dart';
import 'package:flutter_course/config/app_routes.dart';
import 'package:flutter_course/models/user.dart';

class OtherPage extends StatelessWidget {
  final User userData;
  const OtherPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
