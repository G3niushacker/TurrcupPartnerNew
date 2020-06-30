import 'package:doorsteppartnerr/Screens/Bookings/MapScreen.dart';
import 'package:doorsteppartnerr/Screens/Bookings/ProfileScreen.dart';
import 'package:flutter/material.dart';
class CurrentBooking extends StatefulWidget {
  String name;
  CurrentBooking({Key key , @required this.name}): super(key :key);
  @override
  _CurrentBookingState createState() => _CurrentBookingState(name);
}

class _CurrentBookingState extends State<CurrentBooking> {
  String name;
  _CurrentBookingState(this.name);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),),
          title: Text(name),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text("Map"),
              ),
              Tab(
                child: Text("Profile"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MapScreen(),
            ProfileScreen()
          ],
        ),
      ),
    );
  }
}
