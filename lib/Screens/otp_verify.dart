import 'package:flutter/material.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
        leading: Icon(Icons.eighteen_mp),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
        child: Column(
          children: const [
             Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text('OTP Verification',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,),),
            ),
          ],
        ),
          ),
        ),
      ),
    );
  }
}
