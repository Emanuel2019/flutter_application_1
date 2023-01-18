import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter_application_1/login_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'login_app.dart';

class Appwidget extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, builder:(context, child) {
       return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red,
      brightness: AppController.instance.isDartTheme? Brightness.dark:Brightness.light
      ),
      home: LoginPage(),
    );
    });
    
   
  } 
}