import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'foodlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Colors.blueGrey,
      Colors.blueAccent,
      Colors.teal,
    ];

    var imageList = [
      "images/Indian-Food-PNG-Image.png",
      "images/Combo-Junk-Food-PNG-Image.png",
      "images/Indian-Food-PNG-Pic.png"
    ];

    var iconImageList = [
      "images/Burger-Junk-Food-PNG-Transparent-Image.png",
      "images/Combo-Junk-Food-PNG-Picture.png",
      "images/Junk-Food-PNG-File.png",
      "images/Bakery-Food-Transparent-Background.png",
      "images/Food-Delivery-PNG-Transparent-Picture.png",
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 244, 252),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Icon(CupertinoIcons.cart, size: 20),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 244, 252),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        spreadRadius:0.5,
                      ),
                    ],
                  ),
                  child: Icon(CupertinoIcons.search, size: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Dear",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Lets eats something!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                for (int i = 0; i < imageList.length; i++)
                  Container(
                      margin: EdgeInsets.only(right: 20),

                      child: Container(

                        width: 250,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Clrs[i]  ,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "50% off on Any Dishes",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius:
                                          BorderRadius.circular(20),
                                    ),
                                    child: Text(

                                      "Order Now",
                                      style: TextStyle(
                                        color: Colors.lightGreenAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              imageList[i],
                              height: 180,
                              width: 110,
                            ),
                          ],
                        ),
                      )),
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  for (var i = 0; i < 5; i++)
                    Container(
                      height: 55,
                      width: 55,
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Image.asset(iconImageList[i]),
                      ),
                    ),
                ],
              ),
            ),
          ),
          GridItems(),
        ],
      ),
    );
  }
}
