import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/simple_hive_ex/hive_crud.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter(); // initialize hive
  await Hive.openBox('contactBook');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactHive(),
    );
  }
}
