import 'package:auth/Screens/forgot_password.dart';
import 'package:auth/Screens/otp_verify.dart';
import 'package:auth/Screens/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey <FormState>();
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();

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
                   SizedBox(height: MediaQuery.of(context).size.height/16,),
                  const Icon(Icons.threed_rotation,size: 130,color: Colors.indigo,),
                  //SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Welcome back,',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,),),
                  ),
                 // SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text('Sign in to continue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.grey)),
                  ),
                   SizedBox(height: MediaQuery.of(context).size.height/19,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10),
                    child: Form(
                        key:_formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Email Or Phone Number',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        TextFormField(
                          controller: _emailController,
                          validator:(value){
                            if(_emailController.text.isEmpty){
                              return 'This Field Can\'t be empty';
                            }
                          } ,
                          style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            hintText: 'Email or Phone Number',
                            hintStyle: TextStyle(fontSize: 13,color: Colors.black,),

                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Password',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextFormField(
                            controller: _passwordController,
                            validator:(value){
                              if(_passwordController.text.isEmpty){
                                return 'This Field Can\'t be empty';
                              }
                            } ,
                            style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                            decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle:  TextStyle(fontSize: 13,color: Colors.black,),
                              suffixIcon: Icon(Icons.ten_k)
                            ),
                          ),
                        ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (builder)=>const ForgotPassword()));
                           },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text('Forgot Password?',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold))),
                          ),
                        )


                      ],
                    ),
                    ),
                  ),
                   SizedBox(height: MediaQuery.of(context).size.height/15,),
                  InkWell(
                    onTap: (){
                      _formKey.currentState!.validate();
                     // Navigator.push(context, MaterialPageRoute(builder: (builder)=>const OtpVerify()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
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
                              child: const Center(child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text('New user ?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                        const SizedBox(width: 3,),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>const SignupScreen()));
                            },
                            child: const Text('Signup',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 15)))

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
      ),

    );
  }
}
