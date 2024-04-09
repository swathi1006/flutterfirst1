import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/login_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
    //    child: Image(image: AssetImage("assets/icons/appicon.png")),
    //    child: Image(image: AssetImage("assets/icons/spotify.png")),
    //    child: Image(image: AssetImage("assets/icons/youtube.png")),
    //    child: Image(image: AssetImage("assets/icons/medium.png")),
      //  child: Image(image: AssetImage("assets/icons/ln2.png")),
     //  child: Image(image: NetworkImage("https://icons.iconarchive.com/icons/iconarchive/flat-fruit-soft/256/Blackberry-Flat-icon.png"),
     //  height: 200,
     // width: 250,),
        child: Lottie.asset('assets/animation/anim.json'),
      ),
   //   body: Center(
   //       child: Icon(
   //         Icons.water_damage_outlined,
   //         size: 130,
   //         color: Colors.pink,
   //       )),
    );
  }
}