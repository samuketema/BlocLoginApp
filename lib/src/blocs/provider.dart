import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{
  final bloc = Bloc();

  Provider({key ,required Widget child})
   :super(key: key , child: child);
  bool updateShouldNotify(_) => true;

  static Bloc of(context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}