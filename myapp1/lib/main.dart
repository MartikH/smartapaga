import 'package:flutter/material.dart';
import 'package:myapp1/login/appMainPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myApp1',
      home: AppMainPage(),
    );
  }
}
