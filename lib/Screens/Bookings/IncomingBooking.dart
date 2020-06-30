import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:doorsteppartnerr/Screens/Bookings/CurrentBooking.dart';
import 'package:flutter/material.dart';
class IncomingBooking extends StatefulWidget {
  @override
  _IncomingBookingState createState() => _IncomingBookingState();
}
IncomingBookingDestinations destination = IncomingBookingDestinations();
class _IncomingBookingState extends State<IncomingBooking> {
  String serviceImage = "images/hair.jpg";
  String userName = "Ameer Hamza";
  String address = "House # 12 Street # 10 Commertial Area korangi road phase 2 karachi";
  String category = "Salon/Hair Colouring";
  String price = "Rs 4000";
  String date = "12/08/20";
  String purchaseId = "KHI82012";
  String serviceDate = "13/08/20";
  String serviceTime = "12:00PM";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(serviceImage,fit: BoxFit.fill,),
          ),
          Align(
            alignment: Alignment(0.0,-5.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 40,
                    ),
                    SizedBox(height: 3.0,),
                    Text(userName,style: destination.userName,),
                    SizedBox(height: 2.0,)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:20,left: 20,top: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: Text(address,style: destination.address,))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(Icons.location_city,size: 35,)
                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(category,style: destination.lebelText,),
                    Text(price,style: destination.lebelText,)
                  ],
                ),
                Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("BookingID",style: destination.address,),
                    Text("Booking On",style: destination.address,)
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(purchaseId,style: destination.lebelText,),
                    Text(date,style: destination.lebelText,)
                  ],
                ),
                Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Service Date",style: destination.address,),
                    Text("Service Time",style: destination.address,)
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(serviceDate,style: destination.lebelText,),
                    Text(serviceTime,style: destination.lebelText,)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height /15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        onPressed: (){},
                        height: 50,
                        child: Text("Cancel",style: destination.btn,),
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CurrentBooking(name: userName,)
                          ));
                        },
                        height: 50,
                        child: Text("Accept",style: destination.btn,),
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
