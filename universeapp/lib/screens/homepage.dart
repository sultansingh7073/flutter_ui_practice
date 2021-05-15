import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universeapp/constant.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:universeapp/data.dart';
import 'package:universeapp/screens/detailpage.dart';
import 'package:universeapp/screens/profilepage.dart';
import 'package:universeapp/screens/searchpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: GoogleFonts.roboto(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 44),
                  textAlign: TextAlign.left,
                ),
                DropdownButton(
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Solar System",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.white60,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      value: 1,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.pink,
                    ),
                  ),
                  underline: SizedBox(),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  height: 340,
                  child: Swiper(
                    itemCount: planets.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, a, b) => DetailPage(
                                        planetInfo: planets[index],
                                      )));
                        },
                        child: Stack(
                          children: [
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 150,
                                    ),
                                    Text(
                                      planets[index].name,
                                      style: GoogleFonts.roboto(
                                          fontSize: 40,
                                          color: Color(0xff47455f),
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'Solar System',
                                      style: GoogleFonts.roboto(
                                        fontSize: 23,
                                        color: primaryTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Text(
                                          'Know more',
                                          style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            color: secondaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: secondaryTextColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Hero(
                                tag: planets[index].position,
                                child: Image.asset(planets[index].iconImage)),
                            Positioned(
                              right: 15,
                              bottom: 45,
                              child: Text(
                                planets[index].position.toString(),
                                style: TextStyle(
                                  fontSize: 150,
                                  color: primaryTextColor.withOpacity(0.08),
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/menu_icon.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/search_icon.png'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
            ),
            IconButton(
              icon: Image.asset('assets/profile_icon.png'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
