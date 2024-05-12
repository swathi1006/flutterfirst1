import 'package:flutter/material.dart';

class HomeShared extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        title: Text("Home!"),
      ),
      body: Center(child: Text("Welcome Home!")),
    );
  }
}
