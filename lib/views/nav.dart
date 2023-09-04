
import 'package:flutter/material.dart';
import 'package:taskcytrackerapp/views/Home.dart';
import 'package:taskcytrackerapp/views/Project.dart';
import 'package:taskcytrackerapp/views/addproduct.dart';
import 'package:taskcytrackerapp/views/adduser.dart';
import 'package:taskcytrackerapp/views/chatscree.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 0;
  Widget currentScreen = homeview();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
                    currentScreen = homeview();
                  });
                },
                child: Icon(
                  Icons.home_filled,
                  color: activeTab == 0 ? Colors.purple[200] : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  activeTab = 2;
                  setState(() {
                    currentScreen = Project();
                  });
                },
                child: Icon(
                  Icons.folder,
                  color: activeTab == 2 ? Colors.purple[200] : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 70,
                onPressed: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      context: context,
                      builder: (context) => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  child: Text("Create Task"),
                                  onPressed: () {},
                                ),
                                ElevatedButton(
                                  child: Text("Create Project"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddProject()),
                                    );
                                  },
                                ),
                                ElevatedButton(
                                    child: Text("Create Team"),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Adduser()),
                                      );
                                    }),
                                ElevatedButton(
                                  child: Text("Create Event"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ));
                  activeTab = 1;
                  setState(() {
                    // currentScreen = AddCart();
                  });
                },
                child: Icon(
                  Icons.add,
                  color: activeTab == 1 ? Colors.white : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = Users();
                  });
                },
                child: Icon(
                  Icons.chat_outlined,
                  color: activeTab == 3 ? Colors.purple[200] : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = AddProject();
                  });
                },
                child: Icon(
                  Icons.person_4_outlined,
                  color: activeTab == 3 ? Colors.purple[200] : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}