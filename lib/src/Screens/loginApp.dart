import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginApp extends StatelessWidget{
  Widget build(context){
    return Container(
      marign:EdgeInsets.all(25.0),
      child: Column(
        children: [
          email();
          password();
          submitButton();
        ],),
    );
  }
  Widget email(){
    return TextField(
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: "yourEmail@gmail.com",
      ),

    );
  }
  Widget password(){
    return TextField(
      obscureText: true,
      decoration:InputDecoration(
        hintText: 'Password',
        label:'password'
      )
      

    );
  }
  Widget submitButton(){
    return ElevatedButton(
      onPressed:(){},
       child: const Text('Submit'),
       style: ElevatedButton.styleFrom(
       foregroundColor: Colors.white,
       backgroundColor: Color.fromARGB(255, 142, 3, 3)
       ),);
  }
}