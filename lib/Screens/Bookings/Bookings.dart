import 'package:doorsteppartnerr/Screens/Authentication/CodeVerifyAuth.dart';
import 'package:doorsteppartnerr/Screens/Authentication/PhoneAuth.dart';
import 'package:doorsteppartnerr/Screens/Bookings/InProgress.dart';
import 'package:doorsteppartnerr/Screens/Bookings/Pending.dart';
import 'package:doorsteppartnerr/Screens/Bookings/Previous.dart';
import 'file:///J:/TurrCup-Partner-master/TurrCup-Partner-master/lib/Screens/Bookings/IncomingBooking.dart';
import 'package:doorsteppartnerr/SignUp/PersonalDetail.dart';
import 'package:doorsteppartnerr/SignUp/GeneralDetail.dart';
import 'package:flutter/material.dart';
class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
       length: 3,
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           title: Text("My Bookings",style: TextStyle(color: Colors.black),),
           bottom: TabBar(
             indicatorColor: Colors.black,
             tabs: <Widget>[
               Tab(
                 child: Text("In Progress",style: TextStyle(color: Colors.black),),
               ),
               Tab(
                 child: Text("Pending",style: TextStyle(color: Colors.black),),
               ),
               Tab(
                 child: Text("Previous",style: TextStyle(color: Colors.black),),
               )
             ],
           ),
         ),
         body: TabBarView(
           children: <Widget>[
             InProgress(),
             Pending(),
             Previous()
           ],
         ),
       ),
    );
  }
}