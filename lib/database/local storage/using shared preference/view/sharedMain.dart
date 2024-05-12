import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/using%20shared%20preference/view/login.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginShared(),
    );
  }
}
