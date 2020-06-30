import 'dart:async';

import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:doorsteppartnerr/Screens/BottomNavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Authentication/PhoneAuth.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
AuthenticationDestination destination = AuthenticationDestination();
class _SplashScreenState extends State<SplashScreen> {

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var users = auth.currentUser();
    var user =0;
    Timer(Duration(seconds: 3), () {
      if(user != null){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => BottomNavBar()
        ));
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => PhoneAuth()
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/tc.jpg",height: 100,width: 100,),
            Text("TurrCup",style: destination.upertext,)
          ],
        ),
      ),
    );
  }
}
