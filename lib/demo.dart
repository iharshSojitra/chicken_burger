import 'package:flutter/material.dart';

class demo extends StatelessWidget {
  List categoryItems = [
    Icons.ramen_dining,
    Icons.lunch_dining,
    Icons.icecream,
    Icons.sports_bar,
    Icons.local_pizza_rounded,
  ];

  List items = [
    'Noodles',
    'Burger',
    'Desert',
    'Drink',
    'Pizza',
  ];

  List images = [
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(2, 2),
                            ),
                          ]),
                      child: Icon(
                        categoryItems[index],
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      items[index],
                      style: TextStyle(),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
