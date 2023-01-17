import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'home_page.dart';

class Appwidget extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, builder:(context, child) {
       return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red,
      brightness: AppController.instance.isDartTheme? Brightness.light:Brightness.dark
      ),
      home: HomePage(),
    );
    });
    
   
  } 
}