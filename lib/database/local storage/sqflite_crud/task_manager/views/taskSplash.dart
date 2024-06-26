import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/task_manager/views/taskHome.dart';
import 'package:lottie/lottie.dart';

class TaskSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => TaskHome()));
    });
    return Scaffold(
         body: Center(
           child: Lottie.asset("assets/animation/task.json"),
         ),
    );
  }
}