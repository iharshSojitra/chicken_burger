import 'package:flutter/material.dart';
import 'demo.dart';
import 'detail_page.dart';
import 'home_screen.dart';
import 'list_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    );
  }
}
