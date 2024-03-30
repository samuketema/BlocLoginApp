
import 'dart:async'
void main(){

}


class Bloc exteds StatelessWidget{
  
  final _email =  StreamController<String>();
  final _password = StreamController<String>();

  Stream<String> get changeEmail => _email.stream;
  stream<string> get changePassword => _password.stream;

  Function(String) get email => _email.sink.add();
  Function(String) get password => _password.sink.add();
}
