import 'dart:async';
import 'dart:js_interop';

mixin Validator {
  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: ( email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      }
      else{
        sink.addError('Enter a valid email');
      }
    }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
    handleData:(password, sink) {
      if(password.length > 3){
        sink.add(password);
      }
      else{
        sink.addError('Passwod must be atleast 4 characters');
      }
    } );
}