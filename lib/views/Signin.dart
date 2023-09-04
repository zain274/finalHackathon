// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:taskcytrackerapp/views/nav.dart';
import 'package:taskcytrackerapp/views/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {




 TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

signin(context) async {
   try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text,
    password: password.text
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Text("Welcome Back ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,color: Colors.black
            ),),
            SizedBox(height: 30,),
            Text("Please inter your  email address",style: TextStyle(color: Colors.black54),),
            Text("and password for Login",style: TextStyle(color: Colors.black54),),
      
            SizedBox(height: Get.height *.1,),
            TextField(
              controller: email,
              decoration: InputDecoration(
              label: Text("Enter Your Email"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
      
            ),),
            SizedBox(height: Get.height *.1,),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
              label: Text("Enter Your Password"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
             
              )
              )
              ),
              SizedBox(height: 7,),
              Align(
                alignment: Alignment.centerRight,
                child: 
              
              Text("Forget password")),
      Center(
        child:   Container(
        
          
        
          height:40,
        
        width: Get.width *.3,
        
        
        
          
        
          child:   ElevatedButton(onPressed: () {
        
          
      Get.to(HomeScreen());
        
        
          
        
          }, child: Text("Sign In")),
        
        ),
      ),

      SizedBox(height: 30,),
      Center(child: Text("Sign in with ")),

          


   SizedBox(height: 30,),

     TextButton(onPressed: () {
              Get.to(Signup());
            }, child: Text("Do have not account")),
      Center(
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
           OutlinedButton(onPressed: (){
      
          }, child:   const FaIcon(
                            FontAwesomeIcons.apple,
                            size: 20,
                            color: Colors.black,
                           
          ),
          ),

          SizedBox(width: 20,),

          OutlinedButton(onPressed: (){
      
          }, child:   const FaIcon(
                            FontAwesomeIcons.google,
                            size: 20,
                           color: Colors.blue,
          ),
          )
        ],),
      )
      
      
      
           ],
        ),
      ),
    );
  }
}