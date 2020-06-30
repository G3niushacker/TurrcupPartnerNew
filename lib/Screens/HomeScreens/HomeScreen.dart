import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:doorsteppartnerr/Screens/Bookings/InProgress.dart';
import 'package:doorsteppartnerr/Screens/Bookings/Pending.dart';
import 'package:doorsteppartnerr/Screens/HomeScreens/CommonWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
HomeScreenDestination homeDestination = HomeScreenDestination();
RecentBookings recentBookings = RecentBookings();
class _HomeScreenState extends State<HomeScreen> {
  String bookings = "16";
  String earnings = "12000";
  String complete = "13";
  String cancel = "3";
  String level = "Basic Level";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text("Dashboard",style: homeDestination.appBarTitle,),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.grey[900],
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Standard to maintain",style: homeDestination.topCardHead,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Standard Level",style: homeDestination.topCardsubheadupr,),
                      Text(level,style: homeDestination.topCardsubheaduprrep,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Weekly Report",style: homeDestination.topCardsubheaduprrep,),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right:40.0,left:40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Earnings",style: homeDestination.topCardsubheadupr,),
                            SizedBox(height: 5,),
                            Text("Rs ${earnings}",style: homeDestination.topCardHead,),
                            SizedBox(height: 15,),
                            Text("Rating",style: homeDestination.topCardsubheadupr,),
                            SizedBox(height: 5,),
                            Text("5.0",style: homeDestination.topCardHead,)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Bookings",style: homeDestination.topCardsubheadupr,),
                            SizedBox(height: 5,),
                            Text(bookings,style: homeDestination.topCardHead,),
                            SizedBox(height: 15,),
                            Text("Complete",style: homeDestination.topCardsubheadupr,),
                            SizedBox(height: 5,),
                            Text(complete,style: homeDestination.topCardHead,)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text("Current",style: homeDestination.topCardsubhead,),
                 SizedBox(height: 10,),
                 Row(
                   children: <Widget>[
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                             builder: (context) => Pending()
                         ));
                       },
                       child: Container(
                         padding: EdgeInsets.all(20),
                         color: Colors.grey,
                         width: MediaQuery.of(context).size.width / 2.15,
                         child: Column(
                           children: <Widget>[
                             Text("Pending",style: homeDestination.topCardsubhead,),
                             SizedBox(height: 5.0),
                             Text(complete,style: homeDestination.topCardHeadnum,),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(width: 8,),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                             builder: (context) => InProgress()
                         ));
                       },
                       child: Container(
                         padding: EdgeInsets.all(20),
                         color: Colors.grey,
                         width: MediaQuery.of(context).size.width / 2.1,
                         child: Column(
                           children: <Widget>[
                             Text("In Progress",style: homeDestination.topCardsubhead,),
                             SizedBox(height: 5.0),
                             Text(cancel,style: homeDestination.topCardHeadnum,),
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
                 SizedBox(height: 10,),
                 Text("Analytics",style: homeDestination.topCardsubhead,),
                 SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     recentBookings.circularAnalytic("Rating", 1.0, "5.0", Colors.green),
                     recentBookings.circularAnalytic("Earning", 0.9, "90%", Colors.yellow),
                     recentBookings.circularAnalytic("Cancel", 0.0 , "0%", Colors.red),
                     recentBookings.circularAnalytic("Complete", 1.0 , "100%", Colors.green),
                   ],
                 )
               ]
             ),
           ),
        ],
      ),
    );
  }
}
