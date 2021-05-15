import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(60, 30, 189, 0.91),
            Color.fromRGBO(60, 38, 250, 0.6),
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        ),
        child: Stack(
          children: [
            Container(
              height: size.height * 0.15,
              width: size.width * 0.35,
            )
          ],
        ),
      ),
    );
  }
}
