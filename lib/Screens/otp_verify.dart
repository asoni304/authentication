import 'package:flutter/material.dart';

import 'login_screen.dart';

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
        elevation: 0,
         backgroundColor: Colors.white,
        leading: IconButton( onPressed:(){},icon:const Icon(Icons.eleven_mp,color: Colors.black,)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:  [
               const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('OTP Verification',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,),),
              ),

                const Padding(
                padding: EdgeInsets.only(top: 13.0),
                child: Text('Enter the 4-digit code sent to you at (407) 800-6404',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.grey)),
              ),
               SizedBox(height:MediaQuery.of(context).size.height/20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children:  [
                    fieldNumber(),

                    fieldNumber(),

                    fieldNumber(),

                    fieldNumber()
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/4,),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width-150,
                      color: Colors.transparent,
                      child:   Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),

                        elevation: 5,
                        color: Colors.indigo,
                        child: const Center(child: Text('Confirm',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text('Don\'t receive the OTP ?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                    const SizedBox(width: 3,),
                    InkWell(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (builder)=>const LoginScreen()));

                        },
                        child: const Text('RESEND OTP',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 15)))

                  ],
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 130,
                  child: Divider(
                    thickness: 5,

                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
  Widget fieldNumber(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 85,

        child:  AspectRatio(
          aspectRatio: 0.5,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,

          ),

        ),
      ),
    );
  }
}
