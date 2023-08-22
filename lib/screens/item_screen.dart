import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_one_app_ui/widgets/products_images_slider.dart';
import 'package:shopping_one_app_ui/widgets/recommended_items.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: ProductImagesSlider()
                          .animate()
                          .slideY(
                              begin: 10,
                              duration: const Duration(
                                milliseconds: 800,
                              ),
                              curve: Curves.easeOut)
                          .fadeIn(
                            begin: 0.1,
                            delay: const Duration(milliseconds: 600),
                          )
                          .moveX(end: 0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apple Watch Series 6",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 400))
                        .slideX(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 3.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(width: 5),
                        Text("(450)"),
                      ],
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 600))
                        .slideX(),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "\$140",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.black45,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 800))
                        .slideX(),
                    SizedBox(height: 20),
                    Text(
                      "This item contains all the necessary features required for future development as well as important contents in ensuring to having satisfied products for our potential clients and customers.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    )
                        .animate(
                          delay: const Duration(milliseconds: 600),
                        )
                        .fade(
                          duration: const Duration(milliseconds: 600),
                        ),
                    SizedBox(height: 10),
                    Divider(
                      color: Colors.black38,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
                  ],
                ),
              ),
              RecommendedItems(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFD4ECF7),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ).animate(delay: const Duration(milliseconds: 500)).slideY(
            begin: 1,
            duration: const Duration(
              milliseconds: 600,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
    );
  }
}
