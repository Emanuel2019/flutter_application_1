import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String email = "";
  String password = "";
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Iniciar a sessão',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
            ),
            TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                password = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // TextButton(
            //   onPressed: () {},
            //   child: const Text('Login',style: TextStyle(fontSize: 20,color: Colors.blue),),
            // )
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  if (email == "emanuelngola33@gmail.com" &&
                      password == "12345678") {
                    Navigator.of(context).pushNamed('/home');
                  } else {
                    print("Utilizador não registado no crm");
                  }
                },
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
