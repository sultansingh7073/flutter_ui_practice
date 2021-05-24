import 'package:flutter/material.dart';
import 'package:flutter_animation1/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePAge(),
    );
  }
}
