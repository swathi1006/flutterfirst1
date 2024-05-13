import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/task_manager/views/taskSplash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskSplash(),
    );
  }
}
