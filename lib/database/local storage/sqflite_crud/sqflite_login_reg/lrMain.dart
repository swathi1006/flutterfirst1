
import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/sqflite_login_reg/views/splashpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashSQFLite(),
    );
  }
}
