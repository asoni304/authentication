import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final _formKey = GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },icon: const Icon(Icons.eleven_mp,color: Colors.black,),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children:  [
                 const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text('Reset Password',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,),),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,right: 10),
                  child: Form(
                      key:_formKey,child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('New Password',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.seventeen_mp),
                          hintText: 'New Password',
                          hintStyle:  TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),

                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text('Confirm Password',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
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
                SizedBox(height: MediaQuery.of(context).size.height-500,),
                InkWell(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (builder)=>const ResetScreen()));
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
                          child: const Center(child: Text('Confirm',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),)),
                        ),
                      ),
                    ),
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
