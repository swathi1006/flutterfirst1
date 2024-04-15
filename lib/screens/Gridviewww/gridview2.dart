import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 50),
          itemBuilder: (context,index){
            return const Card(
              child: ListTile(leading: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text("My Friend"),),
            );
          }),
    );
  }
}
