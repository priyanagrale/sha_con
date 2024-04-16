import 'package:flutter/material.dart';
import 'package:sha_con/view/header.dart';
import 'package:sha_con/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),


      // home: FirstRoute(title: 'First Route'),
    );
  }
}



