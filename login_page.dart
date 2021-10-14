import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/image/logo.png'),
            ),
            TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TypeInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 15),
            RaisedButton(
              color: Colors.orange,
              onPressed: () {
                if (email == "knoveseg@gmailcom" && password == '123456') {
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  print('login inválido');
                }
              },
              child: Text('Entrar'),
            ),
            RaisedButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/cadastro');
              },
              child: Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}
