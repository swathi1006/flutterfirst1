import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {

  String name;
  String? image;
  StatelessScreen({super.key,required this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(name),
      ),
      body: Center(
          child: Image.asset(image!)),
    );
  }
}
