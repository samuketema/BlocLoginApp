 import 'package:flutter/material.dart';
 import 'Screens/loginApp.dart';
 
 class App extends StatelessWidget {

  @override
 build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc login App',
      home:Scaffold(
        body: LoginApp(),
       )
    );
  }
}