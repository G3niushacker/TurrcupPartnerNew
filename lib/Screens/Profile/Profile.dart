import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
ProfileDestinations destinations = ProfileDestinations();
HomeScreenDestination home = HomeScreenDestination();
class _ProfileState extends State<Profile> {
  String phone = "03057359640";
  String category = "Salon";
  String address = "shop # 12 korangi road phase 2 Ext";
  String cnic = "36104-5623187-5";
  bool language = false;

  onClicked(bool value){
    setState(() {
      language = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:40.0, left:20,right: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png"
                          )
                      )
                  ),
                ),
                SizedBox(width: 30,),
                Text("Ameer Hamza",style: destinations.Name,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Category",style: destinations.lebelText,),
                Text(category,style: destinations.lebelText,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.phone),
                SizedBox(width: 15,),
                Text(phone,style: destinations.lebelText,)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: <Widget>[
                Icon(Icons.format_indent_decrease),
                SizedBox(width: 15,),
                Text(cnic,style: destinations.lebelText,)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: <Widget>[
                Icon(Icons.home),
                SizedBox(width: 15,),
                Expanded(child: Text(address,style: destinations.lebelText,))
              ],
            ),
            Divider(thickness: 2,),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text("FeedBack",style: destinations.listTile,),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.security),
              title: Text("Terms of Service",style: destinations.listTile,),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help",style: destinations.listTile,),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us!",style: destinations.listTile,),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffE2E7E7)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Text("1.0.20"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    language ? Text("English") : Text("اردو",style: destinations.lebelText,),
                    Switch(
                      value: language,
                      onChanged: onClicked,
                      activeColor: Colors.black,
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: (){},
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.exit_to_app),
                      Text("Log Out?")
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}