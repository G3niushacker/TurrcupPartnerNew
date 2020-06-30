import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:doorsteppartnerr/Screens/Authentication/CodeVerifyAuth.dart';
import 'package:flutter/material.dart';
class PhoneAuth extends StatefulWidget {
  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}
AuthenticationDestination destination = AuthenticationDestination();
class _PhoneAuthState extends State<PhoneAuth> {

  final TextEditingController _phoneNumberController = TextEditingController();

  bool isValid = false;


  Future<Null> validate() async {
    print("in validate : ${_phoneNumberController.text.length}");
    if (_phoneNumberController.text.length == 10) {
      setState(() {
        isValid = true;
      });
    }
  }
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("images/tc.jpg",height: 70,width: 70,),
                    Text("TurrCup",style: destination.upertext)
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Enter Your Phone",style: destination.toplebelStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0,left: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("#Mobile",style: destination.codeStyle,),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: TextFormField(
                            controller: _phoneNumberController,
                            onChanged: (text) {
                              validate();
                            },
                            decoration: InputDecoration(
                              hintText: "3123456789",
                              prefix: Container(
                                child: Text(
                                  "+92",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ),
                            autovalidate: true,
                            autocorrect: false,
                            maxLengthEnforced: true,
                            validator: (value) {
                              return !isValid
                                  ? 'Please provide a valid 10 digit phone number'
                                  : null;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0,left: 20.0),
                    child: MaterialButton(
                      onPressed: (){
                        if (isValid) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CodeVerifyAuth(
                                      mobileNumber:
                                      _phoneNumberController
                                          .text,
                                    ),
                              ));
                        }
                      },
                      child: Text("Next",style: destination.btnStyle,),
                      color: Colors.black,
                      shape: StadiumBorder(),
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
