import 'package:flutter/material.dart';
import 'package:shopping_one_app_ui/screens/item_screen.dart';

class RecommendedItems extends StatelessWidget {
  var pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 4; i++)
            SizedBox(
              width: 210,
              height: 300,
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
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
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30% off",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Icon(Icons.favorite, color: Colors.redAccent),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemScreen()));
                          },
                          child: Image.asset(
                            "images/${pNames[i]}.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pNames[i],
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "\$100",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "\$130",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
