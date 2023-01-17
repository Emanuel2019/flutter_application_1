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
      home: HomePage(),
    );
  } 
}
class HomePage extends StatefulWidget {
State<HomePage> createState(){
return HomePageState();
}

}

class HomePageState extends State<HomePage> {
  int counter=0;
  Widget build(BuildContext context){
   return Container(
    child: Center(child: GestureDetector(child: Text('Countador:$counter'),onTap: (){
      setState(() {
          counter++;
      });
    
    },)),
   );
  }

}