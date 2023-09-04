// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taskcytrackerapp/views/nav.dart';



class AddProject extends StatelessWidget {
  AddProject({super.key});

  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController progress = TextEditingController();
  TextEditingController rating = TextEditingController();

  void clearText() {
    title.clear();
    description.clear();
    image.clear();
    progress.clear();
    rating.clear();
  }

  createProject() {
    CollectionReference projects =
        FirebaseFirestore.instance.collection("Projects");

    projects
        .add({
          "title": title.text,
          "description": description.text,
          "image": image.text,
          "progress": progress.text,
          "rating":rating.text
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
                  controller: title,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Project Title",
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
                  controller: description,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Project description",
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
                      hintText: "Profile image",
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
                  controller: progress,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Progress",
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
                  controller: rating,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Rating",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  createProject();
                  clearText();
                },
                child: const Text("Create Project"),
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