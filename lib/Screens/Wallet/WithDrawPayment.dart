import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/material.dart';
class WithDrawPayment extends StatefulWidget {
  @override
  _WithDrawPaymentState createState() => _WithDrawPaymentState();
}
GeneralDetailDestination destination = GeneralDetailDestination();
class _WithDrawPaymentState extends State<WithDrawPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
            Navigator.maybePop(context);
          },
        ),
        title: Text("WithDraw Payment",style: destination.appBarTitle,),
      ),
    );
  }
}
