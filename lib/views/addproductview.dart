// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'allProductView.dart';

class AddProductView extends StatelessWidget {
  AddProductView({super.key});

  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  TextEditingController productUrl = TextEditingController();
  TextEditingController productDetail = TextEditingController();

  void clearText() {
    productName.clear();
    productPrice.clear();
    productUrl.clear();
    productDetail.clear();
  }

  addProduct() {
    CollectionReference products =
        FirebaseFirestore.instance.collection("products");
        
    products
        .add({
          "name": productName.text,
          "price": productPrice.text,
          "url": productUrl.text,
          "detail": productDetail.text,
          "isfavourite": false,
        })
        .then((value) => print("Product Adder"))
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.blue[800],
     
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
              padding: EdgeInsets.only(top:60,left:MediaQuery.of(context).size.width*0.4,right:MediaQuery.of(context).size.width*0.4),
              
          child: Image(image: AssetImage("assets/images/logo.png")),
        
            ),
            SizedBox(height: 30,),
              SizedBox(
                  width: 300,
                child: TextField(
                  maxLength: 20,
                  controller: productName,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Product Name",
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
                  controller: productPrice,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Product Price",
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
                  controller: productUrl,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Product Url",
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
                  controller: productDetail,
                  decoration: InputDecoration(
                      fillColor: Colors.white30,
                      filled: true,
                      hintText: "Product Detail",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  addProduct();
                  clearText();
                },
                child: const Text("Add Product"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllProductsView()),
                  )
                },
                child: const Text("All Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}