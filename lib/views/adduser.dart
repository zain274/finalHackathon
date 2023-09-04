// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taskcytrackerapp/views/nav.dart';


class Adduser extends StatelessWidget {
  Adduser({super.key});

  TextEditingController Title = TextEditingController();
  TextEditingController active = TextEditingController();
  TextEditingController image = TextEditingController();
 

  void clearText() {
    Title.clear();
    active.clear();
    image.clear();
   
  }

  AddUser() {
    CollectionReference projects =
        FirebaseFirestore.instance.collection("Projects");

    projects
        .add({
          "Title": Title.text,
          "active": active.text,
          "image": image.text,
          
        })
        .then((value) => print("Project Adder"))
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //       Container(
              //     padding: EdgeInsets.only(top:60,left:MediaQuery.of(context).size.width*0.4,right:MediaQuery.of(context).size.width*0.4),

              // child: Image(image: AssetImage("assets/images/logo.png")),

              //   ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  maxLength: 20,
                  controller: Title,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "User Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: active,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "User active",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: image,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "User image",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  AddUser();
                  clearText();
                },
                child: const Text("Add User"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  )
                },
                child: const Text("All Project"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}