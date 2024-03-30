
import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  Widget build(context){
    return Container(
      margin:EdgeInsets.all(20.0),
      child: Column(
        children: [
          // email(),
          // password(), 
          // submitButton()
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
        labelText:'password'
      )
      

    );
  }
  Widget submitButton(){
    return ElevatedButton(
      onPressed:(){},
       child:  Text('Submit'),
       style: ElevatedButton.styleFrom(
       foregroundColor: Colors.white,
       backgroundColor: Color.fromARGB(255, 142, 3, 3)
       ),);
  }
}