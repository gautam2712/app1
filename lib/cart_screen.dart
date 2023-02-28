import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var imagePhoto = [
      "images/Veg-Food-Plate-PNG.png", "images/Indian-Food-Transparent-PNG.png", "images/Noodle-Food-Plate-Top-View-PNG.png", "images/Indian-Food-PNG-File.png"
    ];

    var pName = [
      "Gujarati Dish", "Panjabi Dish", "Chineese Dish", "South Indian Dish"
    ];

    var pSizes = ["1 Sabji,3 Roti,Butter-Milk, Rice-Dal", "1 Sabji,2 Nan,Butter-Milk, DalFry", "Noodels with Paneer", "Masala Dosa,Shambhar-Chatni"];
    return Container(

      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20,),
          child: Container(
            child: Expanded(
              child: Column(
                children: [
                  Align(
                    child: Text(
                      "My Order",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  for (int i = 0; i < imagePhoto.length; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 105,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                              height: 80,
                              width: 60,
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 244, 252),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                imagePhoto[i],
                              )),
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 20, bottom: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pName[i],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Items:",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: Text(
                                            pSizes[i],
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "\u{20B9}${1000}",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.minus),
                                    Text("01"),
                                    Icon(CupertinoIcons.plus),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\u{20B9}${4000}",
                        style: TextStyle(
                          color: Colors.blueGrey
                          ,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(bottom: 35),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen,
                    ),
                    child: Center(
                      child: Text(
                        "Order Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
