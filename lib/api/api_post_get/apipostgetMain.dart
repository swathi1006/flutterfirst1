import 'package:flutter/material.dart';
import 'package:flutterfirst/api/api_post_get/apigetpostHome2.dart';
import 'package:flutterfirst/api/api_post_get/apipostgethome.dart';
import '../api_post_http/homeapipost.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyApiPost2(),
      home: ApiHome2(),
    );
  }
}
