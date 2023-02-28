import 'package:flutter/material.dart';
import 'api.dart';
import 'item_screen.dart';

class GridItems extends StatelessWidget {
  var aName = ["Veg-Food-Plate-PNG", "Indian-Food-Transparent-PNG", "Noodle-Food-Plate-Top-View-PNG", "Indian-Food-PNG-File"];

  var pName = ["Gujarati", "Panjabi", "Chineese", "South Indian"];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      if (snapshot.hasData) {
        // List<dynamic> datas = jsonDecode(snapshot.data!.body.toString());
        // datas.reversed;
        return GridView.builder(
          itemCount: snapshot.data!.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {

              },
              child: Container(

                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFD4ECF7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30% off",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),

                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen(snapshot.data![index]['Image'].toString(),snapshot.data![index]['Food_Dish_Name'].toString(),snapshot.data![index]['Price'].toString(),snapshot.data![index]['Description'].toString())));
                          },
                          child: Image.network(
                            snapshot.data![index]['Image'].toString() ,
                            height: 73,
                            width: 100,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index]['Food_Dish_Name'].toString(),
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  '\u{20B9}${snapshot.data![index]['Price'].toString()}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '\u{20B9}${1300}',

                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      } else {
        return Center(child: CircularProgressIndicator());
      }
    },future: callFoodAPI());
  }
}
