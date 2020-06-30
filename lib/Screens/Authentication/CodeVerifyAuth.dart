import 'dart:async';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:doorsteppartnerr/SignUp/PersonalDetail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../BottomNavBar.dart';
class CodeVerifyAuth extends StatefulWidget {
  final String mobileNumber;
  CodeVerifyAuth({Key key , @required this.mobileNumber}): super(key: key);
  @override
  _CodeVerifyAuthState createState() => _CodeVerifyAuthState();
}
String _verificationId;
final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
AuthenticationDestination destination = AuthenticationDestination();
class _CodeVerifyAuthState extends State<CodeVerifyAuth> {
  @override
  String codeTime = "60";

  TextEditingController _pinEditingController = TextEditingController();
  PinDecoration _pinDecoration = UnderlineDecoration(enteredColor: Colors.black, hintText: '000000',color: Colors.black);
  bool isCodeSent = false;


  void _onVerifyCode() async {
    setState(() {
      isCodeSent = true;
    });
    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential phoneAuthCredential) {
      _firebaseAuth
          .signInWithCredential(phoneAuthCredential)
          .then((AuthResult value) {
        if (value.user.displayName != null && value.user != null) {
          // Handle loogged in state
          print(value.user.phoneNumber);
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) =>BottomNavBar(
//                  user: value.user,
                ),
              ),
                  (Route<dynamic> route) => false);
        }else if(value.user != null && value.user.displayName == null){
          MaterialPageRoute(
            builder: (context) => PersonalDetail(
//                user: value.user,
            ),
          );
        }
        else {
          showToast("Error validating OTP, try again", Colors.red);
        }
      }).catchError((error) {
        showToast("Try again in sometime", Colors.red);
      });
    };
    final PhoneVerificationFailed verificationFailed =
        (AuthException authException) {
      showToast(authException.message, Colors.red);
      setState(() {
        isCodeSent = false;
      });
    };

    final PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      _verificationId = verificationId;
      setState(() {
        _verificationId = verificationId;
      });
    };
    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      _verificationId = verificationId;
      setState(() {
        _verificationId = verificationId;
      });
    };

    // TODO: Change country code

    await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: "+91${widget.mobileNumber}",
        timeout: const Duration(seconds: 60),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
  }

  void _onFormSubmitted() async {
    AuthCredential _authCredential = PhoneAuthProvider.getCredential(
        verificationId: _verificationId, smsCode: _pinEditingController.text);

    _firebaseAuth
        .signInWithCredential(_authCredential)
        .then((AuthResult value) {
      if (value.user != null && value.user.displayName != null) {
        // Handle loogged in state
        print(value.user.phoneNumber);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavBar(
//                user: value.user,
              ),
            ),
                (Route<dynamic> route) => false);
      }else if(value.user.displayName == null && value.user != null){
        MaterialPageRoute(
          builder: (context) => PersonalDetail(
//                user: value.user,
          ),
        );
      }
      else {
        showToast("Error validating OTP, try again", Colors.red);
      }
    }).catchError((error) {
      showToast("Something went wrong", Colors.red);
    });
  }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onVerifyCode();
  }

  @override
  Widget build(BuildContext context) {
    Widget imageCoursel = Container(
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage("images/plumber.jpg"),
          AssetImage("images/hair.jpg"),
          AssetImage("images/electricianlist.jpg"),
          AssetImage("images/water.jpg"),
          AssetImage("images/Doctor.jpg"),
        ],
      ),
    );
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.black,
//        title: Text("Veify OTP"),
//      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: imageCoursel,
                color: Colors.black,
                height: MediaQuery.of(context).size.height / 4,
              ),
              Align(
                alignment: Alignment(0.1,5.0),
                child: Image.asset("images/phoneAuth.png",height: 100,width: 100,),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Enter the 4 digit code you recieved \n now in your phone to continue."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Mobile: 0${widget.mobileNumber}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinInputTextField(
                  pinLength: 6,
                  decoration: _pinDecoration,
                  controller: _pinEditingController,
                  autoFocus: true,
                  textInputAction: TextInputAction.done,
                  onSubmit: (pin) {
                    if (pin.length == 6) {
                      _onFormSubmitted();
                    } else {
                      showToast("Invalid OTP", Colors.red);
                    }
                  },
                ),
              ),
              Text("Code expire in ${codeTime}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  shape: StadiumBorder(),
                  color: Colors.black,
                  height: 50,
                  onPressed: (){
                    if (_pinEditingController.text.length == 6) {
                      _onFormSubmitted();
                    } else {
                      showToast("Invalid OTP", Colors.red);
                    }
                  },
                  child: Text("Verify",style: destination.btnStyle,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Didn't get the code?"),
                  FlatButton(
                    onPressed: (){

                    },
                    child: Text("Resend"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
void showToast(message, Color color) {
  print(message);
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
//      timeInSecForIos: 2,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0);
}

