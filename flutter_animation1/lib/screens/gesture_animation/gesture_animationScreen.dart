import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GestureAnimation extends StatefulWidget {
  @override
  _GestureAnimationState createState() => _GestureAnimationState();
}

class _GestureAnimationState extends State<GestureAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Gesture Animation"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.amber),
            child: Center(
              child: Text(
                'Click Me',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
