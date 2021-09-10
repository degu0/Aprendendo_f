import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter/material.dart';

class PlazaPage extends StatefulWidget {
  @override
  State<PlazaPage> createState() {
    return PlazaPageState();
  }
}

class PlazaPageState extends State<PlazaPage> {
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
              title: Text('Home'),
              subtitle: Text('Voltar para a página inicial'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
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
        title: Text('Eko Page'),
        actions: [
          CustomSwitch(),
        ],
      ),

      ///contrução do body do EKO Page;
      ///
      ///
      ///
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
