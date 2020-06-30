import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

HomeScreenDestination homeDestination = HomeScreenDestination();

class RecentBookings{

  Widget recentBooking(String name, String price, String date){
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right: 15.0,left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(name,style: homeDestination.topCardsubhead,),
                SizedBox(
                  height: 5.0,
                ),
                Text(price,style: homeDestination.topCardsubhead,)
              ],
            ),
            Column(
              children: <Widget>[
                Text(date,style: homeDestination.topCardsubhead,),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star,color: Colors.green,),
                    Icon(Icons.star,color: Colors.green,),
                    Icon(Icons.star,color: Colors.green,),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
 
  Widget circularAnalytic(String title ,double percnt, String prcntiner, Color color){
    return Column(
            children: <Widget>[
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                animation: true,
                percent:percnt,
                center: new Text(
                  prcntiner,
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                footer: new Text(
                  title,
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: color,
              ),
            ],
          );
        }
    
    
}