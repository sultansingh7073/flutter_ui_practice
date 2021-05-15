import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Animations'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Animator<double>(
            tween: Tween<double>(begin: -300, end: 300),
            cycles: 0,
            duration: Duration(seconds: 1),
            builder: (context, animatorState, child) => Center(
              child: Transform.translate(
                offset: Offset(animatorState.value, 0),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: 100,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                ),
              ),
            ),
          ),
          Animator<double>(
            tween: Tween<double>(begin: -340, end: 340),
            cycles: 0,
            duration: Duration(seconds: 1),
            builder: (context, animatorState, child) => Center(
              child: Transform.translate(
                offset: Offset(0, animatorState.value),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: 100,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
