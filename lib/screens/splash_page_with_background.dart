import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/login_page.dart';
import 'package:flutterfirst/screens/ListViewww/listview using builder.dart';
import 'package:flutterfirst/screens/ListViewww/listview2.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_with_Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Timer(const Duration(seconds: 8), () {
    //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ListView_Builder()));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ListView_separated()));
    });
    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
      /*      image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bk2.png")
               // image: NetworkImage("https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
            )      */

               gradient: LinearGradient(
                   begin: Alignment.bottomLeft,
                   end: Alignment.topRight,
                   colors: [
                 Colors.deepOrange,
                 Colors.green,
                 Colors.lightGreen,
                 Colors.white,
                 Colors.lightGreenAccent,
                 Colors.deepOrange

               ])
            ),

        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/icons/appicon.png")),
              Text("MyApp",
                 style: GoogleFonts.cambo(
                         fontSize:30,
                         color:Colors.black,
                 )
              //  style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
