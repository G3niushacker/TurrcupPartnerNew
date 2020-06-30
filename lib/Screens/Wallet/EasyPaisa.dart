import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/material.dart';
class EasyPaisa extends StatefulWidget {
  @override
  _EasyPaisaState createState() => _EasyPaisaState();
}
GeneralDetailDestination destination = GeneralDetailDestination();
class _EasyPaisaState extends State<EasyPaisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
            Navigator.maybePop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text("EasyPaisa",style: destination.appBarTitle,),
      ),
    );
  }
}
