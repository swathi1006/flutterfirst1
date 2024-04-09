import 'package:flutter/material.dart';
import 'package:flutterfirst/utils/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextThemes {
  static TextStyle textHeading = GoogleFonts.cabin(
    fontSize: 40,
    color: MyColors.basicColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle tHeading = GoogleFonts.cabin(
    fontSize: 40,
    color: MyColors.headingColors,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyTextStyle = TextStyle(
      fontSize: 20,
      color: Colors.teal[800],
      fontStyle: FontStyle.italic);
}