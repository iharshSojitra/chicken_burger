import 'package:flutter/material.dart';

class detail_page extends StatelessWidget {
  const detail_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: 13,
                        child: Center(
                          child: Image(
                            image:
                                AssetImage("assets/images/woman_pic_round.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Text(
                      "CHICLEN BURGER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "BURGER KING® Delivery. 15000 25",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/images/burger_1.png",
                        ),
                        width: 220,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Text(
                                    "65.000",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Positioned(
                                    top: -6,
                                    left: -8,
                                    child: Text(
                                      "Rp",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white70,
                                size: 25,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white70,
                                size: 25,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white70,
                                size: 25,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white70,
                                size: 25,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white70,
                                size: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 460,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum arcu vitae, libero, proin id et eros, turpis pellentesque. Diam nam felis. feugiat eget nibh tellus ullamcorper mattis bibendum. Malesuada adipiscing dis tincidunt pretium cras. Est tellus mi fermentum malesuada.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  Text(
                                    "Double Cheese",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Positioned(
                                  left: -40,
                                  top: -35,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/burger_1.png'),
                                    width: 180,
                                    height: 180,
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  Text(
                                    "Beef Burger",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Positioned(
                                  left: -20,
                                  top: -10,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/burger_2.png'),
                                    width: 150,
                                    height: 150,
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  Text(
                                    "Chicken Burger",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Positioned(
                                  left: -40,
                                  top: -35,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/burger_3.png'),
                                    width: 180,
                                    height: 180,
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.cyanAccent.shade100,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.orange,
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.orange,
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 240,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(22)),
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
