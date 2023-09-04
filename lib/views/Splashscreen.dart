// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskcytrackerapp/UTILS/colorConstract.dart';
import 'package:taskcytrackerapp/views/Slider.dart';
// import 'package:taskcytrackerapp/views/Slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SliderScreen()),
      );
    });
  }
@override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             Image.asset("assets/images/splash.jpeg",
             height: Get.height *.5,
             width: Get.width *.7,
             ),
             ListTile(
              onTap: () {
                
                Get.bottomSheet(
                  shape: RoundedRectangleBorder(),
                
              
                  Container(
                    color: Colors.white,
                    height: Get.height *.5,
                    width: Get.width *.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                  Text("Taskey",style: TextStyle(color:ColorConstants.bottomsheetfirstcolor ,fontSize: 34,
                  fontWeight: FontWeight.bold
                  ),),
              SizedBox(height: 20,),
                   Text("Building Better",style: TextStyle(color:ColorConstants.blackcolor ,
                  fontWeight: FontWeight.bold
                  ),),
              SizedBox(height: 10,),
              
                   Text("Workplaces",style: TextStyle(color:ColorConstants.blackcolor ,
                  fontWeight: FontWeight.bold
                  ),),
              
              SizedBox(height: 10,),
              
                    Text("Lorem Ipsum is simply dummy text of the printing ",style: TextStyle(color:ColorConstants.blackcolor ,
                  
                  ),),
              SizedBox(height: 5,),
              
                   Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",style: TextStyle(color:ColorConstants.blackcolor ,
                  
                  ),),
              SizedBox(height: 20,),
              
              
              Container(
          
          height: Get.height *.1,
            width: Get.width *.3,
              
          
          child:   ElevatedButton(onPressed: () {
          
            
          
          }, child: Text("Get Start")),
              )
              
                      ],
                    ),
                  )
              
                );
              },
             )
            
              
              
            ],
              
              
          ),
        ),
      ),
    );
  }
}