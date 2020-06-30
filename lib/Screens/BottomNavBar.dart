import 'package:doorsteppartnerr/Config/BottomNavBarDestination.dart';
import 'package:doorsteppartnerr/Screens/Bookings/Bookings.dart';
import 'package:doorsteppartnerr/Screens/HomeScreens/HomeScreen.dart';
import 'package:doorsteppartnerr/Screens/Profile/Profile.dart';
import 'package:doorsteppartnerr/Screens/Wallet/Wallet.dart';
import 'package:doorsteppartnerr/Config/BottomNavBarDestination.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  int _currentIndex = 0;

  final allScreensDestination = [
    HomeScreen(),
    Bookings(),
    Profile(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allScreensDestination,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestination.map((Destination destination){
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            backgroundColor: Colors.black,
            title: Text(destination.title)
          );
        }).toList()
      ),
    );
  }
}