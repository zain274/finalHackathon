import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taskcytrackerapp/views/addproductview.dart';
import 'package:taskcytrackerapp/views/addtocart.dart';
import 'package:taskcytrackerapp/views/details.dart';



class AllProductsView extends StatefulWidget {
  const AllProductsView({super.key});

  @override
  State<AllProductsView> createState() => _AllProductsViewState();
}

class _AllProductsViewState extends State<AllProductsView> {
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");
  updatData(pId) {
    var products = FirebaseFirestore.instance.collection("products");
    setState(() {
      products.doc(pId).update({"isfavourite": true});
    });
    // products.doc(pId).set({"isfavourite": true});
    // if ("${pId["isfavourite"]}" == false) {
    //  products.doc(pId).set({"isfavourite": true});
    // } else {
    //   products.doc(pId).set({"isfavourite": false});
  }


  
  getAllProducts() async {
    return products.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E-Commerce',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddToCart(),
                ),
              );
            },
            icon: const Icon(Icons.local_grocery_store),
            color: Colors.black87,
          ),
          SizedBox(
            width: 1,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            hintText: 'Search Here',
                            prefixIcon: Icon(Icons.search),
                            iconColor: Colors.grey),
                      ),
                    )),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Featured Products',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'see all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
              FutureBuilder(
                  future: getAllProducts(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data.docs.length,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              child: Card(
                                  elevation: 10,
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailView(
                                                data:
                                                    snapshot.data.docs[index]),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            snapshot.data.docs[index]['url'],
                                            height: 110,
                                            width: 200,
                                          ),
                                            Text(
                                                snapshot.data.docs[index]['name'],
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87)),
                                            const SizedBox(height: 0),
                                          Row(
                                            children: [
                                              Text(
                                                  snapshot.data.docs[index]
                                                      ['price'],
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey)),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text("Rs",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey)),
                                              const SizedBox(
                                                width: 80,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    updatData(
                                                        "${snapshot.data.docs[index]}");
                                                    return snapshot
                                                        .data.docs[index];
                                                  },
                                                  child: Icon(
                                                      Icons
                                                          .favorite_border_outlined,
                                                      color: snapshot.data.docs[
                                                                      index][
                                                                  'isfavourite'] ==
                                                              false
                                                          ? Colors.black
                                                          : Colors.red))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            );
                          });
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
            ],
          ),
        ),
      ),
      floatingActionButton: CircleAvatar(
        child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddProductView(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black87,
            )),
      ),
    );
  }
}

  // updateData() async {
  //   CollectionReference products =
  //       FirebaseFirestore.instance.collection("products");

  //   String pId = products
  //   Map<String, dynamic> updatedData = {
  //     'isfavourite': true,
  //   };
  //   try {
  //     // Update the document
  //     await products.doc(pId).update(updatedData);
  //     print('Document updated successfully!');
  //   } catch (e) {
  //     print('Error updating document: $e');
  //   }
  // }