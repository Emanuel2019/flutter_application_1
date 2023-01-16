import 'package:flutter/material.dart';

void main() {
  runApp(Appwidget(
    title: 'Flutterando 3...',
  ));
}

class Appwidget extends StatelessWidget {
  @override
  final String title;
  const Appwidget({super.key, required this.title});
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Container(
        child: Center(child: Text('Flutterando'))
      ),
    );
  } 
}
