import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/sqflite_login_reg/views/welcomepage.dart';

class SplashSQFLite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PUNCH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Punch",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize:20),),
                Text(" . Earn . ",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize:20),),
                Text("Repeat",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize:20),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
