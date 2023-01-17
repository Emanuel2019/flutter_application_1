
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
State<HomePage> createState(){
return HomePageState();
}

}

class HomePageState extends State<HomePage> {
  int counter=0;
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: Text('Página principal'),
      
    ),
   
  body: Container(
    height: 200,
    width: 200,
    color: Colors.black,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),

  
    ),
  ),
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
       setState(() {
          counter++;
      });
    
    },),
  );
  }

}