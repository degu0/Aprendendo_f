import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      child: SingleChildScrollView(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        )
        child: Column(
        MainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (text){
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
           onChanged: (text){
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
           onPressed: () {
            if(email == 'konoveseg@gmai.com' && password == 'k9seg')
            print('correta');
         } else{
           print('login invalido');
         }, 
         child: Text:('Entrar')),
        ],
        ),
      ),
    );
  }
}
