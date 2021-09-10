import 'package:flutter_application_1/Pages/Plaza_Page.dart';
import 'package:flutter_application_1/Pages/comopolitan_Page.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/eko_page.dart';
import 'Pages/mediterrâneo_Page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
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
              onTap: () {
                print("Colocar a url do `Portal do Cliente`");
              },
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
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: GestureDetector(
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EkoPage()),
              );
            },
          ),
        ),
        child: Container(
          height: 100,
          width: 400,
          color: Colors.green,
          child: GestureDetector(
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PlazaPage()),
              );
            },
          ),
        ),
        child: Container(
          height: 300,
          width: 100,
          color: Colors.purple,
          child: GestureDetector(
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ComopolitanPage()),
              );
            },
          ),
        ),
        child: Container(
          height: 300,
          width: 400,
          color: Colors.blue,
          child: GestureDetector(
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MediterraneoPage()),
              );
            },
          ),
        ),
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
