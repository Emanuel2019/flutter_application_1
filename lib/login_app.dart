import 'dart:html';

import 'package:flutter/material.dart';

class MyLoginApp extends StatelessWidget {
  const MyLoginApp({Key? key}) : super(key: key);
  static const String _title = " Sistema de gestão de vendas";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStateLoginApp(),
      ),
    );
  }
}

class MyStateLoginApp extends StatefulWidget {
  const MyStateLoginApp({Key? key}) : super(key: key);
  State<MyStateLoginApp> createState() => _MyStateLoginApp();
}

class _MyStateLoginApp extends State<MyStateLoginApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Tela de Login',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Iniciar a sessão',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
                obscureText: true,
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                )),
          ),
          TextButton(
              onPressed: () => {}, child: const Text('Esquece a password')),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
                child: const Text('Login'),
                onPressed: (() {
                  print(nameController.text);
                  print(passwordController.text);
                })),
          ),
          Row(
            children:<Widget> [
const Text('Ainda tenho uma conta'),
TextButton(child: const Text('Registar',
style: TextStyle(fontSize: 20),
),
onPressed:() {
  
},)

            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
