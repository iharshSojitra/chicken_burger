import 'package:chicken_burger/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List categoryItems = [
    Icons.ramen_dining,
    Icons.lunch_dining,
    Icons.icecream,
    Icons.sports_bar,
    Icons.local_pizza_rounded,
  ];

  List iteam = [
    'Noodles',
    'Burger',
    'Desert',
    'Drink',
    'Pizza',
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 290,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(40))),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/woman_pic_round.png")),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 5, color: Colors.white)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dinihari",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 18,
                                    width: 33,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Vip",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Text(
                                    "576.500",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Positioned(
                                      top: -13,
                                      left: -15,
                                      child: Text(
                                        "Rp",
                                        style: TextStyle(color: Colors.white70),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "139",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Buy",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 15),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Vouchar",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 15),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "24",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Alms",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  right: 33,
                  child: Container(
                    height: 55,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(2, 2)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black54,
                              size: 30,
                            ),
                            hintText: "What do you want to eat?",
                            hintStyle:
                                TextStyle(color: Colors.black54, fontSize: 18),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 45,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                5,
                (index) => Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 95,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color:
                                selected == index ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2)),
                            ]),
                        child: Icon(
                          categoryItems[index],
                          size: 48,
                          color:
                              selected == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      iteam[index],
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 268,
                        width: 230,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chicken",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Burger",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text(
                                        "65.000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Positioned(
                                        top: -13,
                                        left: -13,
                                        child: Text(
                                          "Rp",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => detail_page(),
                                          ));
                                    },
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      child: Icon(
                                        Icons.add,
                                        size: 38,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -55,
                        top: 3,
                        child: Image.asset(
                          'assets/images/burger_1.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 268,
                        width: 230,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Double",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Cheese",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text(
                                        "85.000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Positioned(
                                        top: -13,
                                        left: -13,
                                        child: Text(
                                          "Rp",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => detail_page(),
                                          ));
                                    },
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      child: Icon(
                                        Icons.add,
                                        size: 38,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: -27,
                        child: Image.asset(
                          'assets/images/burger_2.png',
                          height: 180,
                          width: 210,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.bookmark, color: Colors.white, size: 43),
                    Icon(Icons.shopping_bag, color: Colors.white, size: 43),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      maxRadius: 24,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    Icon(Icons.notifications, color: Colors.white, size: 43),
                    Icon(Icons.person, color: Colors.white, size: 43),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
