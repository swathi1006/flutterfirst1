import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class ATMCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/free-vector/dark-polygonal-background_23-2148121468.jpg?w=996&t=st=1712812049~exp=1712812649~hmac=e08f6c0e1f634b83c6ec279b4335dbf70285bbaf279713a15c66b16e4f9c0b53"))),
            ),
            Positioned(
              top: 100,
              left: 200,
              child: Text(
                "5412 7526 3489",
                style: GoogleFonts.caladea(fontSize: 30, color: Colors.white70),
              ),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://as1.ftcdn.net/v2/jpg/02/68/72/34/1000_F_268723428_HWt44tSubXLRZwYmLTgiSNELsR5uCyEK.jpg"))),
              ),
            ),
            Positioned(
              top: 150,
              left: 30,
              child: Container(
                height: 50,
                child: Column(
                  children: [
                    Text(
                      "LEKSHMI K K",
                      style: GoogleFonts.cabin(
                        fontSize: 20,
                        color: Colors.white38,
                      ),
                    ),
                    Text(
                      "   Valid THRU: 30/12/2026",
                      style: GoogleFonts.cabin(
                          fontSize: 15, color: Colors.white38),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 30,
              child: Container(
                child: Text(
                  "DEBIT CARD",
                  style: GoogleFonts.cabin(
                    fontSize: 20,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
                left: 300,
                child: Transform.rotate(
              angle: math.pi / 2,
              child: Icon(
                Icons.wifi,
                size: 30,
                color: Colors.grey,
              ),
            )),
        Positioned(
          top: 150,
          left: 280,
          child: Container(
          height: 70,
          width: 100,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/m.png"))),
                ),
        ),
          ],
        ),
      ),
    );
  }
}
