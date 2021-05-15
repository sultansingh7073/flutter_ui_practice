import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universeapp/constant.dart';
import 'package:universeapp/data.dart';

class DetailPage extends StatelessWidget {
  final PlanetInfo planetInfo;
  const DetailPage({Key key, this.planetInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Text(
                      planetInfo.name,
                      style: GoogleFonts.roboto(
                          fontSize: 56,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Solar System',
                      style: GoogleFonts.roboto(
                          fontSize: 31,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    SizedBox(
                      height: 150,
                      width: 300,
                      child: SingleChildScrollView(
                        child: Text(
                          planetInfo.description ?? '',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Color(0xff868686),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Gallery',
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            color: Color(0xff47455f),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Container(
                        height: 250,
                        child: ListView.builder(
                            itemCount: planetInfo.images.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32)),
                                child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.network(
                                      planetInfo.images[index],
                                      fit: BoxFit.cover,
                                    )),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: -80,
                child: Hero(
                    tag: planetInfo.position,
                    child: Image.asset(planetInfo.iconImage))),
            Positioned(
                top: 30,
                left: 20,
                child: Text(
                  planetInfo.position.toString(),
                  style: GoogleFonts.roboto(
                      fontSize: 200,
                      color: primaryTextColor.withOpacity(0.06),
                      fontWeight: FontWeight.w900),
                )),
            IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
