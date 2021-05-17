import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybank2/http/webclient.dart';
import 'package:mybank2/screens/dashboard.dart';

void main() {
  runApp(MyBank2App());
  findAll().then((transactions) => print('new transactions $transactions'));
}

class MyBank2App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
