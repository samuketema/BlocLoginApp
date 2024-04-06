 import 'package:flutter/material.dart';
 import 'Screens/loginApp.dart';
 import 'blocs/provider.dart';
 
 class App extends StatelessWidget {

  @override
  ///build method that returns a new widget tree that can incorporate pices of the
  ///old widget tree(a provider that contains MaterialApp)
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