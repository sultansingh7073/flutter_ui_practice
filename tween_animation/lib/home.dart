import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          circleAnimation(1.1, 1600),
          circleAnimation(1.3, 1570),
          circleAnimation(1.6, 1540),
          circleAnimation(1.9, 1510),
          circleAnimation(2.2, 1480),
        ],
      ),
    );
  }

  Widget circleAnimation(double size, int duration) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: width / size,
        width: width / size,
        child: Animator<double>(
          duration: Duration(milliseconds: duration),
          cycles: 0,
          curve: Curves.easeInOut,
          tween: Tween(begin: 0, end: 20),
          builder: (context, animatorState, child) {
            return Container(
              margin: EdgeInsets.all(animatorState.value),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
            );
          },
        ),
      ),
    );
  }
}
