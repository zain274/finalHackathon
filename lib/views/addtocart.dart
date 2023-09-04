import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskcytrackerapp/views/Constants.dart';


class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  var count = 0;
  Addcount(context, i) {
    setState(() {
      count++;
    });
  }

  Minuscount(context, i) {
    setState(() {
      if (count <= 0) {
        count = 0;
      } else {
        count--;
      }
    });
  }

  deletUser(context, i) {
    setState(() {
      Navigator.pop(context);

      Constants.cartData.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AddToCart",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: ListView.builder(
        itemCount: Constants.cartData.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.only(top: 5),
           
                child: Container(
                   decoration: BoxDecoration(
                  color: Colors.grey[300],
               
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                 blurStyle: BlurStyle.outer
                )]
                  
                ),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      
                      CircleAvatar(
                        
                        radius: 30,
                  backgroundImage:
                      NetworkImage("${Constants.cartData[i]['url']}"),
                      ),
                      
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     Text( "${Constants.cartData[i]['name']}",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("${Constants.cartData[i]['price']}",
                    style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                     ),
                     
                     ElevatedButton( onPressed: () {
                            Addcount(context, i);
                          }, child: Icon(Icons.add,),),
                          Text("${count}"),
                     
                      ElevatedButton( onPressed: () {
                            Minuscount(context, i);
                          }, child: Icon(Icons.exposure_minus_1_outlined,)),
                    ],
                  ),
                ),
            // child: ListTile(
            //     leading: CircleAvatar(
                  
            //     ),
            //     title: Text(
                 
            //     ),
                // subtitle: Text(),
            //     // trailing: Container(
            //     //   width: 70,

            //     //   child: Row(
            //     //   //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //     children: [
            //     //       SizedBox(width: 120,),
                      
            //     //     ],
            //     //   ),
            //     // )
            //     ),
                
          );
        },
      ),
      floatingActionButton: ElevatedButton(onPressed: (){}, child: Text("Order Now")),
    );
  }
}