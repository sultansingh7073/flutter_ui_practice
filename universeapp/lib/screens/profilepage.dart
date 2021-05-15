import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universeapp/constant.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/profiles.png',
                    fit: BoxFit.cover,
                  )),
              Center(
                child: Text(
                  "@the_deepak_maurya",
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.blueAccent.withOpacity(0.6)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
