import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Sign Up"),
          SizedBox(height: 50,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              )
            ),
          )
        ],
      ),
    );
  }
}
