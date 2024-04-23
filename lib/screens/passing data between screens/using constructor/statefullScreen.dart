import 'package:flutter/material.dart';

class StatefulScreen extends StatefulWidget {
  String name;
  String? image;

  StatefulScreen({super.key, required this.name, this.image});

  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Statefull Screen"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.image!),
          Text(widget.name!)],
      )),
    );
  }
}
