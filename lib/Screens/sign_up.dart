import 'package:auth/Screens/login_screen.dart';
import 'package:auth/Screens/otp_verify.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text('CreateAccount',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,),),
                  ),
                   const Padding(
                    padding: EdgeInsets.only(top: 13.0),
                    child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.grey)),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,right: 10),
                    child: Form(
                        key:_formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('First Name',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        TextFormField(
                          style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            hintText: 'First Name',
                            hintStyle:  TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                          ),
                        ),
                        const SizedBox(height: 4,),
                        const Text('Last Name',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: TextFormField(
                            style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                            decoration: const InputDecoration(
                              hintText: 'Last Name',
                              hintStyle:  TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                            ),
                          ),
                        ),
                        const SizedBox(height: 4,),
                        const Text('Email or Phone Number',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        TextFormField(
                          style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            hintText: 'Email or Phone Number',
                            hintStyle:  TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                          ),
                        ),
                        const SizedBox(height: 4,),

                        const Text('Password',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        TextFormField(
                          style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.seventeen_mp),
                            hintText: 'Password',
                            hintStyle:  TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                          ),
                        ),
                        const SizedBox(height: 4,),
                        const Text('Confirm Password',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        TextFormField(
                          style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.seventeen_mp),
                            hintText: 'Confirm Password',
                            hintStyle:  TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                          ),
                        ),

                      ],
                    ),
                    ),
                  ),
                  const SizedBox(height: 60,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (builder)=>const OtpVerify()));
                    },
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
                            child: const Center(child: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),)),
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
                        const Text('Already have an account ?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                        const SizedBox(width: 3,),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>const LoginScreen()));

                            },
                            child: const Text('Login',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 15)))

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
              )

      ),
          ),
      ),
    );
  }
}
