import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/material.dart';
class AddPayment extends StatefulWidget {
  @override
  _AddPaymentState createState() => _AddPaymentState();
}
GeneralDetailDestination destination = GeneralDetailDestination();
class _AddPaymentState extends State<AddPayment> {
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
        title: Text("Add Payment",style: destination.appBarTitle,),
      ),
    );
  }
}
