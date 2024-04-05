
import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginApp extends StatelessWidget {
  Widget build(context){
    return Container(
      margin:EdgeInsets.all(20.0),
      child: Column(
        children: [
           email(),
           password(), 
           submitButton()
        ],),
    );
  }
  Widget email(){
    return StreamBuilder(stream: bloc.email,
     builder:(context, snapshot) {
   return TextField(
      onChanged: bloc.changeEmail,
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
        errorText: snapshot.error?.toString(),
        labelText: 'Email',
        hintText: "yourEmail@gmail.com",
      ),

    );
     },)
   ;
  }
  Widget password(){
    return StreamBuilder(stream: bloc.password,
    builder:(context, snapshot) {
      return TextField(
        onChanged: bloc.changePassword,
      obscureText: true,
      decoration:InputDecoration(
        errorText: snapshot.error?.toString(),
        hintText: 'Password',
        labelText:'password'
      )
      

    );
    },) ;
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