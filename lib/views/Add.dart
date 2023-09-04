import 'package:flutter/material.dart';

class Addproductview extends StatefulWidget {
  const Addproductview({super.key});

  @override
  State<Addproductview> createState() => _AddproductviewState();
}

class _AddproductviewState extends State<Addproductview> {
   bool light = true;
   bool ligth1= false;
   bool ligth2= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
               Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Permissiom"),
                 Switch(value: light, 
                    activeColor: Colors.blue,
                  onChanged: (value) {
                      setState(() {
          light = value;
        });
        
        
        })
              
              ],
            ),
          ),

          SizedBox(height: 20,),
                 Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Push Notification"),
                 Switch(value: ligth1, 
                    activeColor: Colors.red,
                  onChanged: (value) {
                      setState(() {
          light = value;
        });
        
        
        })
              
              ],
            ),
          ),
           SizedBox(height: 20,),
            Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode"),
                 Switch(value: ligth2, 
                    activeColor: Colors.orange,
                  onChanged: (value) {
                      setState(() {
          light = value;
        });
        
        
        }),

              
        
              
              ],
            ),
          ),

 SizedBox(height: 20,),
          Card(
          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Security"),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),

 SizedBox(height: 20,),
        Card(
          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Help"),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
 SizedBox(height: 20,),
        Card(
          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Language"),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),

 SizedBox(height: 20,),
        Card(
          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("About Application"),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
        ],
      ),
    );
  }
}