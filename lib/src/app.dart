 import 'package:flutter/material.dart';
 import 'Screens/loginApp.dart';
 import 'blocs/provider.dart';
 
 class App extends StatelessWidget {

  @override
 build(BuildContext context) {
    return Provider(
      
      child: MaterialApp(
      title: 'Bloc login App',
      home:Scaffold(
        body: LoginApp(),
       )
    ),
    );
  }
}