import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth  auth = FirebaseAuth.instance;


  void getName(){
    var userName;
    var userDisplyName = auth.currentUser().then((user){
      userName = user.displayName;
    });
    return userName;
  }

}