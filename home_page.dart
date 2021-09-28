import 'package:flutter_application_1/Pages/Plaza_Page.dart';
import 'package:flutter_application_1/Pages/comopolitan_Page.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/eko_page.dart';
import 'package:flutter_application_1/check_state.dart';
import 'Pages/mediterrâneo_Page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  bool value = false;

  final notifications = [
    CheckBoxState(title: 'titulos'),
    CheckBoxState(title: 'titulos'),
    CheckBoxState(title: 'titulos'),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Knoveseg'),
                accountEmail: Text('Knoveseg@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar a sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Portal do Cliente'),
              onTap: () => launch('https://knoveseg.com.br/'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: ListView(
        padding: EdgeInsents.all(12),
        children: [
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.orange,
            value: value,
            title: Text(
              'Messages',
              style: TextStyle(fontSize: 20),
            ),
            onChanged: (value) => setState(() => this.value = value!),
          ),
        ],
      ),
    );
    return scaffold;
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
