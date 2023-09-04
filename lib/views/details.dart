// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskcytrackerapp/views/Constants.dart';
import 'package:taskcytrackerapp/views/addtocart.dart';




class DetailView extends StatelessWidget {
  var data;

  DetailView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
  
    AddtoCart(context) {
     
       
        Constants.cartData.add({
          "url": data["url"],
          "name": data["name"],
          "price": data["price"],
        }
      );
      print(Constants.cartData);
    }

    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
          
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  data['url'],
                  // width: MediaQuery.of(context).size.width*1
                  width: 600,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Text(
                  data['name'],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 40),
                ),
                SizedBox(
                  height: 5,
                  width: 40,
                ),
               Row(
                children: [
                   Text(
                  data['price'],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 2,),
                Text("Rs",style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),),

                ],
                

               ),
                  SizedBox(height: 20,),
               Text("Detail:", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 20),),
               SizedBox(height: 10,),
               Text(data['detail'],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),),
                  SizedBox(height: 5,),
               
              ],
            ),
            
          );
        },
        itemCount: 1,
      
      )),
      floatingActionButton:  ElevatedButton(
                          onPressed: () {
                            AddtoCart(context);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddToCart(),
                              ),
                            );
                          },
                          child: Text("Add to Cart"))
    );
  }

}