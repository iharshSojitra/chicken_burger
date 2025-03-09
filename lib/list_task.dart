import 'package:flutter/material.dart';

class ListTask extends StatelessWidget {
  List images = [
    'https://media.istockphoto.com/photos/fujifilm-xt1-mirrorless-digital-camera-picture-id582281072?k=20&m=582281072&s=612x612&w=0&h=hRSIVKJ8L24qjhrNf87sfc2X-aQAuvv47y8OEma3itU=',
    'https://cdn.pixabay.com/photo/2020/05/26/09/32/product-5222398_960_720.jpg',
    'https://cdn.thewirecutter.com/wp-content/media/2022/07/laptop-under-500-2048px-acer-1.jpg',
    'https://cdn.shopify.com/s/files/1/1676/7297/products/Main-Image_800x.jpg?v=1613022858',
    'https://i0.wp.com/www.alphr.com/wp-content/uploads/2022/05/party-box-encore-essential1.png?resize=640%2C440&ssl=1',
    'https://media.istockphoto.com/photos/apple-iphone-11-pro-isolated-on-white-background-picture-id1197063336?k=20&m=1197063336&s=612x612&w=0&h=itmZNAgNxzHh2WoVGrrw0R0Bs3QIPB5KG6EpXZ9t5eQ=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvz6GhC0lnZHkeJEa2gA69bvmGMrxlbkO-00jpatMxSZtmWS8ATqzkd86z5MkeAgUhjes&usqp=CAU',
  ];
  List pro_name = [
    'camera',
    'gogles',
    'laptop',
    'headphones',
    'speaker',
    'phone',
    'shoes',
  ];
  List price = [
    '50,000',
    '1700',
    '55,000',
    '5000',
    '25,000',
    '99,000',
    '3500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            7,
            (index) => Column(
              children: [
                Image.network(
                  images[index],
                ),
                Text(
                  pro_name[index],
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  price[index],
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
