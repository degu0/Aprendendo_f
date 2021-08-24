import 'package:flutter_application_1/app_controller.dart';
// ignore: unused_import
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDartTheme
              ? Brightness.dark
              : Brightness.light,
        ),
        home: LoginPage(),
      ),
    );
  }
}
