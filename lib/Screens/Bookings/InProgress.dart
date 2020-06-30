import 'package:doorsteppartnerr/Screens/Authentication/CodeVerifyAuth.dart';
import 'package:doorsteppartnerr/Screens/Authentication/PhoneAuth.dart';
import 'package:doorsteppartnerr/Screens/Bookings/CurrentBooking.dart';
import 'package:doorsteppartnerr/Screens/Bookings/IncomingBooking.dart';
import 'package:doorsteppartnerr/SignUp/GeneralDetail.dart';
import 'package:doorsteppartnerr/SignUp/PersonalDetail.dart';
import 'package:flutter/material.dart';
class InProgress extends StatefulWidget {
  @override
  _InProgressState createState() => _InProgressState();
}

class _InProgressState extends State<InProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PhoneAuth()
                  ));
                },
                child: Text("Auth Screen"),
                color: Colors.greenAccent,
                height: 50,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PhoneAuth()
                  ));
                },
                child: Text("CodeVerify"),
                color: Colors.greenAccent,
                height: 50,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => GeneralDetail()
                  ));
                },
                child: Text("General Details"),
                color: Colors.greenAccent,
                height: 50,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PersonalDetail()
                  ));
                },
                child: Text("Personal Detail"),
                color: Colors.greenAccent,
                height: 50,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => IncomingBooking()
                  ));
                },
                child: Text("Incoming Booking"),
                color: Colors.greenAccent,
                height: 50,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CurrentBooking()
                  ));
                },
                child: Text("Current Booking"),
                color: Colors.greenAccent,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
