import 'package:doorsteppartnerr/SignUp/MessageScreen.dart';
import 'package:flutter/material.dart';
import 'package:doorsteppartnerr/Config/Constrains.dart';
class GeneralDetail extends StatefulWidget {
  @override
  _GeneralDetailState createState() => _GeneralDetailState();
}
GeneralDetailDestination destination = GeneralDetailDestination();
class _GeneralDetailState extends State<GeneralDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 40),
              child: Text("Submit Your Documents",style: destination.topLebelStyle,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.3),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Column(
                        children: <Widget>[
                          Text("Your Selfie",style: destination.lebelStyle,),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: IconButton(icon: Icon(Icons.camera_alt,size: 50,color: Colors.white,),),
                            ),
                          ),
                          SizedBox(height: 10.0,)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      width: MediaQuery.of(context).size.width / 2.1,
                      child: Column(
                        children: <Widget>[
                          Text("Profile Photo",style: destination.lebelStyle,),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: IconButton(icon: Icon(Icons.camera_alt,size: 50,color: Colors.white,),),
                            ),
                          ),
                          SizedBox(height: 10.0,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text("CNIC Back",style: destination.lebelStyle,),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: IconButton(icon: Icon(Icons.camera_alt,size: 100,)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: <Widget>[
                      Text("CNIC Back",style: destination.lebelStyle,),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2.1,
                        child: IconButton(icon: Icon(Icons.camera_alt,size: 100,)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MessageScreen()
                  ));
                },
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: Text("Done",style: destination.btnStyle,),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
