import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_one_app_ui/widgets/grid_items.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];

    var imageList = [
      "images/slide1.png",
      "images/slide3.png",
      "images/slide4.png",
    ];

    var iconImageList = [
      "images/icon1.png",
      "images/icon2.png",
      "images/icon3.png",
      "images/icon4.png",
      "images/icon5.png",
      "images/icon6.png",
      "images/icon7.png",
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
                    color: Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Icon(CupertinoIcons.cart, size: 28),
                ).animate().fade(duration: const Duration(milliseconds: 800)),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Icon(CupertinoIcons.search, size: 28),
                ).animate().fade(duration: const Duration(milliseconds: 800)),
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
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
                    .animate(
                      delay: const Duration(milliseconds: 600),
                    )
                    .fade(
                      duration: const Duration(milliseconds: 600),
                    )
                    .slideX(),
                SizedBox(height: 5),
                Text(
                  "Lets shop something!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                )
                    .animate(
                      delay: const Duration(milliseconds: 800),
                    )
                    .fade(
                      duration: const Duration(milliseconds: 800),
                    )
                    .slideX(),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 5.5,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "30% off on Winter Collection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Container(
                                width: 90,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Shop Now",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                  ),
              ],
            ),
          )
              .animate()
              .slideX(
                  begin: 10,
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.easeOut)
              .fadeIn(
                begin: 0.1,
                delay: const Duration(milliseconds: 400),
              )
              .moveX(end: 0),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  for (var i = 0; i < 7; i++)
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFD4ECF7),
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
          SizedBox(height: 10),
          GridItems()
              // .animate()
              // .fadeIn()
              // .slideY(curve: Curves.fastLinearToSlowEaseIn),

              .animate()
              .slideY(
                begin: 1,
                duration: const Duration(
                  milliseconds: 800,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              )
        ],
      ),
    );
  }
}
