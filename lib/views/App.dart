import 'package:flutter/material.dart';


class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                  
                  },
                  child: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ),
                Text(
                  'Friday, 26',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.notification_add, size: 30),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Let's make a \nhabbits together 🙌 ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
              const SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.blue.shade400,
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Application Design',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('UI Design kit',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Positioned(
                              child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                          )),
                          Positioned(
                              left: 33,
                              bottom: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                              )),
                          Positioned(
                              left: 50,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                              ))
                        ],
                      )
                    ]),
              ),
            ),
              const SizedBox(
              height: 20,
            ),
             const Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "In Progress",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward , size : 28),],
            ),
             Center(
               child: const Card(
             
                    
                    child : Padding(
                      padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Productivity Mobile App' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 15),),
                          Text('Create Detail Booking' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                          Text('2 min ago' , style: TextStyle(fontWeight: FontWeight.w300 , fontSize: 14),),
                          
                    
                                    ],),
                    )),
             )

          
          ]),



    ),
    ),


    
    );
   
  }
}
