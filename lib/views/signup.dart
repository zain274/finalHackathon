// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:taskcytrackerapp/views/Signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {



 TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.to(Signin());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Text("Create Account ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,color: Colors.black
              ),),
              SizedBox(height: 30,),
              Text("Please inter your  email address",style: TextStyle(color: Colors.black54),),
              Text("and password for Login",style: TextStyle(color: Colors.black54),),
      
              SizedBox(height: 15,),
      
                TextField(decoration: InputDecoration(
                label: Text("Enter Your Name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
        
              ),),
        
              SizedBox(height: Get.height *.05),
              TextField(
                controller: email,
                decoration: InputDecoration(
                label: Text("Enter Your Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
        
              ),),
              SizedBox(height: Get.height *.05,),
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
          
            
          
          
          signup(context);
            
          
            }, child: Text("Sign In")),
          
          ),
        ),
      
        SizedBox(height: 30,),
        Center(child: Text("Sign in with ")),
         SizedBox(height: 30,),
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
      ),
      
    );
  }
}