import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(child: Column(
              children: [
                Expanded(child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.amber),flex: 2,),
                     Expanded(child: Column(
                      children: [
                        Expanded(child: Column(
                          children: [
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.lightGreen),),
                                Expanded(child: Container(color: Colors.deepOrangeAccent),),
                              ],
                            )),
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.grey),),
                                Expanded(child: Container(color: Colors.yellowAccent),),
                              ],
                            )),
                          ],

                        ),flex: 1),
                        Expanded(child: Container(color: Colors.cyan),),
                      ],
                    )),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.deepOrange ),),
                    Expanded(child: Column(
                      children: [
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.lightGreen),),
                            Expanded(child: Container(color: Colors.deepOrangeAccent),),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.grey),),
                            Expanded(child: Container(color: Colors.yellowAccent),),
                          ],
                        )),
                      ],
                    )),
                    Expanded(child: Container(color: Colors.blueGrey),),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child: Column(
                      children: [

                        Expanded(child: Container(color: Colors.lightGreen)),
                      ],
                    )),
                    Expanded(child: Container(color: Colors.pink)),
                    Expanded(child: Container(color: Colors.cyanAccent)),


                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Expanded(child: Column(
                          children: [
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.lightGreen),),
                                Expanded(child: Container(color: Colors.deepOrangeAccent),),
                              ],
                            )),
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.grey),),
                                Expanded(child: Container(color: Colors.yellowAccent),),
                              ],
                            )),
                          ],
                        )),
                        Expanded(child: Container(color: Colors.deepPurple)),
                      ],
                    )),
                    Expanded(child: Container(color: Colors.grey)),
                    Expanded(child: Container(color: Colors.brown)),
                    Expanded(child: Column(
                      children: [
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.greenAccent)),
                            Expanded(child: Column(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color: Colors.lightGreen),),
                                    Expanded(child: Container(color: Colors.deepOrangeAccent),),
                                  ],
                                )),
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color: Colors.grey),),
                                    Expanded(child: Container(color: Colors.yellowAccent),),
                                  ],
                                )),
                              ],
                            )),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.deepOrange)),
                            Expanded(child: Container(color: Colors.green)),
                          ],
                        ),flex: 2,),
                      ],
                    )),
                  ],
                )),

              ],
            )),

            // Expanded(child: Column(
            //   children: [
            //     Expanded(child: Container(color: Colors.black12)),
            //     Expanded(child: Container(color: Colors.deepOrangeAccent)),
            //     Expanded(child: Container(color: Colors.yellowAccent)),
            //
            //   ],
            // )),
          ],
        ),

      ),
    );
  }
}
